cask "font-iosevka-ss03" do
  version "32.1.0"
  sha256 "bbf1262bd8c284f1f8ca8db357fd63f4cb5b826cd50a1218ce6a7d7f94927e07"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
