cask "font-lxgw-neoxihei" do
  version "1.301"
  sha256 "0bf3390e5f782fcdef07b4f3444771e9d066b3d6873d07e07561328efb6f4b4d"

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
