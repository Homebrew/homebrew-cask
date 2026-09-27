cask "font-iosevka-etoile" do
  version "34.9.0"
  sha256 "6fe35af31f153907a4e14ae01862cf382e2cfcdaca4a91a0b2d6ae16028e6618"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaEtoile-#{version}.zip"
  name "Iosevka Etoile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaEtoile.ttc"

  # No zap stanza required
end
