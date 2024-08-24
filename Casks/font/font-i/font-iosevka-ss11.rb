cask "font-iosevka-ss11" do
  version "31.4.0"
  sha256 "9ffc903b3f4f63f02f6df711feac50a5ba552aebc937aa00735d40e9b9635a27"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
