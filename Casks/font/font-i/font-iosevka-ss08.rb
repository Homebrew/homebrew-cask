cask "font-iosevka-ss08" do
  version "31.1.0"
  sha256 "755b75cd25b28b4c8e8438d1016dbef5fa437cebc57021353471129f5acda0c8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
