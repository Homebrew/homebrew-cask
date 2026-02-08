cask "font-lxgw-neoxihei" do
  version "1.241"
  sha256 "f72c8eba6c19f557a1d06c0747db05a6c0a7d5d2cd3757b5e8c2f672b199c426"

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
