cask "font-iosevka-slab" do
  version "34.2.1"
  sha256 "1add3b9a5d8cb15b51911b4ef2410697b78da74c022dc7392dd04fbd4660bd11"

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
