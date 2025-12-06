cask "font-iosevka-curly-slab" do
  version "33.3.6"
  sha256 "4f76e2b2955364ded0b302baf4081fc63cc08fe4c82c4abf4c7c1e6f8611e239"

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
