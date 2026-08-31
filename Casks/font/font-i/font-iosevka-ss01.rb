cask "font-iosevka-ss01" do
  version "34.8.1"
  sha256 "4cacff581bbbcabdb5fc8af8926e36cefe39edb65f673d9478ea58008411fbeb"

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
