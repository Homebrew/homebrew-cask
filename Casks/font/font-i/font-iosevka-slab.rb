cask "font-iosevka-slab" do
  version "34.8.1"
  sha256 "baae30c5ff2855ffff8baf6293bcb137324b202e54a2e04e6d66afb886b317ee"

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
