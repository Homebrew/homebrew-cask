cask "font-iosevka-slab" do
  version "32.1.0"
  sha256 "767fe668f67127dcae12431c292ec1152fa52caa2f11823b126344567fc08ba2"

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
