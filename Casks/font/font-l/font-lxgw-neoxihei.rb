cask "font-lxgw-neoxihei" do
  version "1.230"
  sha256 "62efb8582eba1d892ecdcdd7ecbce31fd29e8411f52094ab7fc29e1039f0438c"

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
