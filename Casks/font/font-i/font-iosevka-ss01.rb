cask "font-iosevka-ss01" do
  version "33.2.9"
  sha256 "925bfcdbab519c83689ed085473faebc64a4a40ce5efb4e1e594bb440bd4cec4"

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
