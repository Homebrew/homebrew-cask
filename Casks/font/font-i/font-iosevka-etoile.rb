cask "font-iosevka-etoile" do
  version "34.6.0"
  sha256 "2961a93b4aab716cd5d7cc87dbf09e04d7961067c64f6b8d8c474d969d3ada47"

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
