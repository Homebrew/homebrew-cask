cask "font-iosevka-ss02" do
  version "34.8.0"
  sha256 "419f0f5dc6909564459588d510a2c8a316c9999b775d704d3b0043fafc1969db"

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
