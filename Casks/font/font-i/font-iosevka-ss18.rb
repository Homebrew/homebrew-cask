cask "font-iosevka-ss18" do
  version "34.6.2"
  sha256 "8467e9f67c8fb2b8c1debcf8003794025e61e60dc5f861d80fa38291f837f416"

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
