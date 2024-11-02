cask "font-iosevka-ss03" do
  version "32.0.0"
  sha256 "3dac691b1ceb4a4170a5933096bd8819358fa0a8058cc4de1759ecdaa1803282"

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
