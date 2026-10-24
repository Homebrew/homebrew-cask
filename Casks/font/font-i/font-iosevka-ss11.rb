cask "font-iosevka-ss11" do
  version "34.9.1"
  sha256 "436bd30ab696b4151c65789ba3a46060a8817dfcb2d5b0c45d7a0c70dfdb616b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
