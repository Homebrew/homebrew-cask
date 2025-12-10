cask "font-lxgw-neoxihei" do
  version "1.234"
  sha256 "8ec2dadc7ad0ff89af462516cbc69c3dd4caa0ce2b54f6c9e3bbb380882793d2"

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
