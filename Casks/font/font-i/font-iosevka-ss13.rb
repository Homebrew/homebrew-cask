cask "font-iosevka-ss13" do
  version "34.9.0"
  sha256 "711ea67ee933a848c8a1a07c29da3bf1b4c97b2c2f0d99bf5a9331e1e9c8b1fa"

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
