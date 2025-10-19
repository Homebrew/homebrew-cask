cask "font-iosevka-curly-slab" do
  version "33.3.3"
  sha256 "4c0b1bf0d8c637d1d1f331389e4c2ea7e55d8ec40b391c3e1ad726e362df477c"

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
