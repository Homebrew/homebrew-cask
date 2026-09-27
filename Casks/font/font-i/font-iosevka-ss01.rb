cask "font-iosevka-ss01" do
  version "34.9.0"
  sha256 "d3a2cc5a57eda667cbd871574c8f7988050a6e1c2562f00f7db4c061e39ddaa5"

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
