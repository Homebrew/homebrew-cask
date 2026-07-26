cask "font-iosevka-ss11" do
  version "34.8.0"
  sha256 "83b82346d4424f5446c66685640fad099934a6cfb18e948a2feaa5cc5023a350"

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
