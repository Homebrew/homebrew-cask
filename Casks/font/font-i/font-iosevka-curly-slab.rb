cask "font-iosevka-curly-slab" do
  version "34.5.0"
  sha256 "af40247fc10ff3356a449fc055001a752d4f2bb86f3485ab4acd7613c72ff786"

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
