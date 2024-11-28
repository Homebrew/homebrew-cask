cask "font-iosevka-etoile" do
  version "32.2.0"
  sha256 "29b5f4f0c5c044fa4ffe94941fa1b3a6255296e7beb0ee3132ed1bd44211827f"

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
