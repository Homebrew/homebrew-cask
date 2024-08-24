cask "font-iosevka-curly-slab" do
  version "31.4.0"
  sha256 "4a98fffbbad7e37bea93d3b9b841a948389e7a4b615aa2c84a16fecac247dcab"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurlySlab-#{version}.zip"
  name "Iosevka Curly Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurlySlab.ttc"

  # No zap stanza required
end
