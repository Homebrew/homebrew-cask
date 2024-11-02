cask "font-iosevka-ss08" do
  version "32.0.0"
  sha256 "babbad0a92c194b5d644ceb4f78b1658532e454bd8e63c90e1a790bce736b8d4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
