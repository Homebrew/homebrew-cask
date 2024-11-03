cask "font-iosevka-ss02" do
  version "32.0.1"
  sha256 "e51721c7414783a9fc31aa8555933afca35ff453dc3a73f6d368c6545ab90c1f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
