cask "font-lxgw-neoxihei" do
  version "1.225"
  sha256 "32f96df4fd3fb48ba2cd72c1773981269c5df14b1f3b03fab1a606d7b2957974"

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
