cask "font-iosevka-ss13" do
  version "32.2.1"
  sha256 "877d39ad6fdd8bda327ad26faa3bf734daaa7fe7a7795af8b1fb6d87c07ef77b"

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
