cask "font-iosevka-slab" do
  version "31.4.0"
  sha256 "0a33f6b1ef394c8c74c69a9f3bb11e912111915a0c2c055e447817e080c7c7ae"

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
