cask "font-lxgw-neoxihei" do
  version "1.240"
  sha256 "abe813042e7f0a3458dec8ee6f9aa4bbf2be5dd9b80c494ac9d9ca78ba57989c"

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
