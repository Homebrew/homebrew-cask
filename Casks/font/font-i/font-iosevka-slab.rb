cask "font-iosevka-slab" do
  version "33.2.0"
  sha256 "d301c6e343addbac5d4e2f4caeb5e08df0d7f12e14005536d89aa5d018156b2f"

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
