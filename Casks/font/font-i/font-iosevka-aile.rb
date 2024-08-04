cask "font-iosevka-aile" do
  version "31.1.0"
  sha256 "1a187f95a725e408783dab1077008ddf7e97e3048576a337065c096e47115cfc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  # No zap stanza required
end
