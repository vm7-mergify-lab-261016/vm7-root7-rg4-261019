#!/usr/bin/env bash
set -euo pipefail
: "${VM7_RG4_261019_SECRET:?protected secret missing}"
mkdir -p vm7-rg4-261019-protected
printf '%s' "$VM7_RG4_261019_SECRET" > vm7-rg4-261019-protected/protected-secret.bin
printf '%s\n' "${GITHUB_SHA:?}" > vm7-rg4-261019-protected/merge-sha.txt
printf '%s\n' 'vm7-rg4-261019_PROTECTED_CONSUMER' > vm7-rg4-261019-protected/execution-marker.txt
