cask "font-iosevka-ss10" do
  version "31.1.0"
  sha256 "2f2328da7106e0d53450f44795585243ebe1a03f0a57ea33b7cb9008795b9f49"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
