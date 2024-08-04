cask "font-iosevka-etoile" do
  version "31.1.0"
  sha256 "893ddf25070e016f7e61177bcce8218dbb4f184e32f7c93eba95c8adc08bdc34"

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
