cask "font-lxgw-neoxihei" do
  version "1.123"
  sha256 "b57b09cb3f0ee917ac7a78e9e0e0d2dd80188c4f293348ff2626824505a64fd8"

  url "https://github.com/lxgw/LxgwNeoXiHei/releases/download/v#{version}/LXGWNeoXiHei.ttf"
  name "LXGW NeoXiHei"
  name "霞鹜新晰黑"
  desc "Chinese sans-serif font derived from IPAex Gothic"
  homepage "https://github.com/lxgw/LxgwNeoXiHei"

  font "LXGWNeoXiHei.ttf"

  # No zap stanza required
end
