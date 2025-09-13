cask "font-iosevka-curly-slab" do
  version "33.3.0"
  sha256 "654b0a91566b55788f01f4e2c80506f616a262cb1114ce0332f103c5f5627784"

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
