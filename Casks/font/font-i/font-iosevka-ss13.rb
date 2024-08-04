cask "font-iosevka-ss13" do
  version "31.1.0"
  sha256 "1f66c7a0a028167343475102d5f4c620f9815a793d0d294939674157ea923a96"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
