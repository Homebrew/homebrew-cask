cask "font-iosevka-ss12" do
  version "33.3.5"
  sha256 "a9c691d6054ca9f8aef85c89d6856166532448ca5a6971939c165512064a9f57"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
