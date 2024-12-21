cask "font-iosevka-ss18" do
  version "32.3.0"
  sha256 "117e7406c4adbff4c40d0b2c6b27b4cf6cf54ba696e21d2a95ee3d90ce399b19"

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
