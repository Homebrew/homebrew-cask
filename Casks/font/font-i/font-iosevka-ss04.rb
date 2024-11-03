cask "font-iosevka-ss04" do
  version "32.0.1"
  sha256 "e4d7433b2dcb2c336f6b6a9cdf45415bf0c8b4c300c4ec0b8cbabc658158ad40"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
