cask "font-lxgw-neoxihei" do
  version "1.224"
  sha256 "5a26fccd9b1dc3d2b97665583f29b3bf8864021ace5b21237e5cc45fcb6fd337"

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
