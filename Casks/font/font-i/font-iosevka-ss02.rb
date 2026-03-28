cask "font-iosevka-ss02" do
  version "34.3.0"
  sha256 "ead23184a33a598de487ca39996703f63e40ee1234ce4310d4ad3f747e364f8f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
