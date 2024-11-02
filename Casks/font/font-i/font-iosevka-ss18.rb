cask "font-iosevka-ss18" do
  version "32.0.0"
  sha256 "30fef3fe4c537ba8fc50b14cecb033705d87d45dd6987398845d86b19a660835"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
