cask "font-iosevka-ss02" do
  version "34.7.0"
  sha256 "5e52c9589775dff8d43c78c8f217ec7e809115c70912c2574ea5709e00a722f5"

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
