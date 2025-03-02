cask "font-iosevka-ss01" do
  version "33.0.1"
  sha256 "9187c995e46559468f0ff7ead85e4865d39c5bccb42473f31b7f06c37b5fc693"

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
