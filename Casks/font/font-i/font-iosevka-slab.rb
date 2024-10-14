cask "font-iosevka-slab" do
  version "31.9.1"
  sha256 "4beabd9bc6e496fe47c26e6b6d4b1a7588502383c1662dd062eab001227addb5"

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
