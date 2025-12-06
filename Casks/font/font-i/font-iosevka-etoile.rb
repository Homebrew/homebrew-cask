cask "font-iosevka-etoile" do
  version "33.3.6"
  sha256 "6ebde0105a707f3e7612028afc9b693f9972006f1abfb85976524f28dd35bf88"

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
