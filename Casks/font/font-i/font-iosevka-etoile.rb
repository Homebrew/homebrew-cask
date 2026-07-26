cask "font-iosevka-etoile" do
  version "34.8.0"
  sha256 "b4c7040112b239a1f8365461232cff67f5c2c4823c48e2526d04edce8f2161cd"

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
