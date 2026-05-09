cask "font-iosevka-slab" do
  version "34.5.0"
  sha256 "b79c38c9d3c88f95538b3b68ade612c9c01a655710b481ae51d6ff27a5fdb80b"

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
