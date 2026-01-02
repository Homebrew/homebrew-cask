cask "font-lxgw-neoxihei" do
  version "1.237"
  sha256 "c9e1c1b169fd5f264e691687c5bd67e90d5d3ede4edf9869ed3ceeecce897894"

  url "https://github.com/lxgw/LxgwNeoXiHei/releases/download/v#{version}/LXGWNeoXiHei.ttf"
  name "LXGW NeoXiHei"
  name "霞鹜新晰黑"
  homepage "https://github.com/lxgw/LxgwNeoXiHei"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "LXGWNeoXiHei.ttf"

  # No zap stanza required
end
