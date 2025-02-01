cask "font-iosevka-slab" do
  version "32.5.0"
  sha256 "ede76e25e492f5cc5819c5a319d50a3cd85eb1c47ab04f8d3cf58f7397c1323f"

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
