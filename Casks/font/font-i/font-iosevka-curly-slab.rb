cask "font-iosevka-curly-slab" do
  version "34.8.0"
  sha256 "7fb1d48f6f0e6ca483d914d9dc25a492aff00b428badac923703ac19d4be5628"

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
