cask "font-iosevka-ss04" do
  version "31.1.0"
  sha256 "be74c6ae88663e0fd3a635fda4193caa018f557ae7feac95d2227c30aa6cba1b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
