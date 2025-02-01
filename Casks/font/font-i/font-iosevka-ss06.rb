cask "font-iosevka-ss06" do
  version "32.5.0"
  sha256 "04c6d239a724c259eda45c2893adead5bd43ff842e511674ee619c2b88ca82ee"

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
