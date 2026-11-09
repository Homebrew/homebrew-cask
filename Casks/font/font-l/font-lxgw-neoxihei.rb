cask "font-lxgw-neoxihei" do
  version "1.308"
  sha256 "80415d3666d9f51cf42ecf82c5350488e6b3f282ab46a3b90dcaa5e212564ecc"

  url "https://github.com/lxgw/LxgwNeoXiHei/releases/download/v#{version}/LXGWNeoXiHei.ttf"
  name "LXGW NeoXiHei"
  name "霞鹜新晰黑"
  homepage "https://github.com/lxgw/LxgwNeoXiHei"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "LXGWNeoXiHei.ttf"

  zap :not_required
end
