cask "font-lxgw-neoxihei" do
  version "1.238"
  sha256 "0c41faded1f7f9e76b93f4ab87cf5da8d0e07af33c0ae71c5250693671a95ca1"

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
