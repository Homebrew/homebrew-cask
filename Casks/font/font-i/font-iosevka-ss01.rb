cask "font-iosevka-ss01" do
  version "32.5.0"
  sha256 "96848dc889c5a011409ee59aa08beee60be77fd1c5356ac5bbe9f714dfaa7453"

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
