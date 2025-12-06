cask "font-iosevka-slab" do
  version "33.3.6"
  sha256 "2f0590f097d2b15e17500241e06e0adcf43301a50b1ea81840b2f3b3db08d1b9"

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
