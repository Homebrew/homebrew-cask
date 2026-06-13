cask "font-iosevka-slab" do
  version "34.6.2"
  sha256 "7b7ab45a56f2caf10134655fa7a721e69898bd68b5e533b0f69c57f2ee224828"

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
