cask "font-iosevka-ss07" do
  version "33.0.1"
  sha256 "ea9237d73465ae15b9842c33aee1aa93f20789d88c5b58c99abccefde61bc2a1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
