cask "font-lxgw-neoxihei" do
  version "1.232"
  sha256 "2c2b61434d0ea5f09122b31e9d066c322a3fcf9e693c9b640f28e2312371ee41"

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
