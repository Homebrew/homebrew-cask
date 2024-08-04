cask "font-iosevka-ss06" do
  version "31.1.0"
  sha256 "78263226aa77b1b657eb813b664fe52b1562e6505f2c6963c14e2ec57d8eebd3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
