cask "font-lxgw-neoxihei" do
  version "1.122"
  sha256 "d2b316d69e893a0c56aa4dc2df05b4eb91c64a5c51579d1db4eea7f4c7f33ce8"

  url "https://github.com/lxgw/LxgwNeoXiHei/releases/download/v#{version}/LXGWNeoXiHei.ttf"
  name "LXGW NeoXiHei"
  name "霞鹜新晰黑"
  desc "Chinese sans-serif font derived from IPAex Gothic"
  homepage "https://github.com/lxgw/LxgwNeoXiHei"

  font "LXGWNeoXiHei.ttf"

  # No zap stanza required
end
