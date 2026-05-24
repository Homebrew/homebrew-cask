cask "font-iosevka-ss08" do
  version "34.6.1"
  sha256 "5e5c127bae271872a38ac69a138b25cf7f5e9c4ae807b66eba3e8958146d55f6"

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
