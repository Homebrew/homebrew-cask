cask "font-iosevka-slab" do
  version "34.9.1"
  sha256 "128e37ff45e6997aeacb479903cd08a3c4252761a7bd763023eee32062826f74"

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
