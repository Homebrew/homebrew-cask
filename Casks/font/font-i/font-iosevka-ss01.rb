cask "font-iosevka-ss01" do
  version "34.6.3"
  sha256 "7285fafe1f4fca7aaf419fe0cb96ad04aae8b0a16752df3624bd5d25629f52dc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
