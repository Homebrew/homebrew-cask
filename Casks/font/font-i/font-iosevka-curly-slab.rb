cask "font-iosevka-curly-slab" do
  version "33.0.1"
  sha256 "76cb524ed673ab628134728ece2e4172e375fe2a55a5cba846dc1b6b27b43509"

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
