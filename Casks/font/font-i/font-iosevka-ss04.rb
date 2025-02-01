cask "font-iosevka-ss04" do
  version "32.5.0"
  sha256 "28776e9b07f51674e00f6c80dc0338b0d2ceb5687fcf0b61ee6ce2c6cfaace00"

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
