cask "font-iosevka-slab" do
  version "33.3.1"
  sha256 "dbd1232824f4c28e48d09094c1c6ed93519dfc498ac23f145615d7132dbaff1a"

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
