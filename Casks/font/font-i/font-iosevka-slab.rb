cask "font-iosevka-slab" do
  version "33.3.5"
  sha256 "88f20e60aab36ccac82eb6214f630bac6f9deca3d8bb7aee0093a5157908c66d"

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
