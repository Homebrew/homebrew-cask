cask "font-iosevka-ss18" do
  version "31.9.0"
  sha256 "bb4c563f367e74207663276cf37eb95d63586a15e15fb2bd519419f70c11e449"

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
