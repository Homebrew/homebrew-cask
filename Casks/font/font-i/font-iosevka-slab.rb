cask "font-iosevka-slab" do
  version "33.3.0"
  sha256 "87c4832e2b15b0e2262c612f8cbfd6b88d6656452bea723b86144f3574facca6"

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
