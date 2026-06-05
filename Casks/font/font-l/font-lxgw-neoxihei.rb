cask "font-lxgw-neoxihei" do
  version "1.302"
  sha256 "ed845f07e9c31d48733ee5b28ee654230c7bb4b2a38e13fd26eb4d5919c0c37c"

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
