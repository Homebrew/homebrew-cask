cask "font-iosevka-curly-slab" do
  version "34.6.1"
  sha256 "3c61511fa7dd28da532aed8b2a57677517052bb4d88a284b59a2f8693850311c"

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
