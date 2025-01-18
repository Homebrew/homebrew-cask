cask "font-iosevka-slab" do
  version "32.4.0"
  sha256 "43fc8b671efffe3ad5a3dc374c769c36a0eb2b3f554c45e82a5654dde0cd0321"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab.ttc"

  # No zap stanza required
end
