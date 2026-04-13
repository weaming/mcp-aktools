#!/usr/bin/env fish
# mcp-akshare local runner (equivalent to docker run)

set -gx TZ Asia/Shanghai
set -gx TRANSPORT http
set -gx PORT 3006
set -gx UV_INDEX_URL http://mirrors.aliyun.com/pypi/simple
set -gx HTTP_PROXY http://localhost:7890
set -gx HTTPS_PROXY http://localhost:7890

cd (dirname (status --current-filename))

uv run -m mcp_aktools
