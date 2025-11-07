cask "font-lxgw-neoxihei" do
  version "1.227"
  sha256 "ec426532063ef98ad443d04a64b39fb758ac73c107b8e2d5a0e44c2cc3e78132"

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
