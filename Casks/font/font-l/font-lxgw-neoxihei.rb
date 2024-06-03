cask "font-lxgw-neoxihei" do
  version "1.123.1"
  sha256 "b5586b9569ae0e8822fdd8c721443eca202ccc682dc51e10b6441caa88bc25ba"

  url "https://github.com/lxgw/LxgwNeoXiHei/releases/download/v#{version}/LXGWNeoXiHei.ttf"
  name "LXGW NeoXiHei"
  name "霞鹜新晰黑"
  desc "Chinese sans-serif font derived from IPAex Gothic"
  homepage "https://github.com/lxgw/LxgwNeoXiHei"

  font "LXGWNeoXiHei.ttf"

  # No zap stanza required
end
