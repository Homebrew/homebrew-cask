cask "font-iosevka-ss04" do
  version "34.8.0"
  sha256 "18cad13ea2d8a6c49c1a3a0c638be8ff0e7fca42c6692af538e89847e23ebd91"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
