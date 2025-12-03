cask "font-lxgw-neoxihei" do
  version "1.233"
  sha256 "01c220704c1a1cb59763b3e8e3bb7b48de92bee6a16a72a1cc5211e5d9afc935"

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
