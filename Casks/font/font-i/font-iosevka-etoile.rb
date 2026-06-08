cask "font-iosevka-etoile" do
  version "34.6.1"
  sha256 "0b89e7ab48998d1c351d116250c2c7240c153c4746799484b83aa07b7c2dc708"

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
