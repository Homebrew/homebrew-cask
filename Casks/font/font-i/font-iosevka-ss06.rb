cask "font-iosevka-ss06" do
  version "31.4.0"
  sha256 "91cac457fd18ac6242cdf597b1b6caefaf9b6fcb6e97f75a2deba2a0174e29e4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
