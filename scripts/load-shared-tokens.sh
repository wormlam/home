#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOKENS_FILE="${SCRIPT_DIR}/../.secrets/tokens.env"

if [[ ! -f "${TOKENS_FILE}" ]]; then
  echo "Missing ${TOKENS_FILE}. Copy .secrets/tokens.env.example first." >&2
  return 1 2>/dev/null || exit 1
fi

set -a
# shellcheck disable=SC1090
source "${TOKENS_FILE}"
set +a

echo "Loaded shared tokens from ${TOKENS_FILE}"
