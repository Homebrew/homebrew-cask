cask "font-iosevka-ss01" do
  version "33.3.0"
  sha256 "867f146f5b88e74d834f573f4601b755e6050408f72c7cd54b2ab655dde241ac"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
