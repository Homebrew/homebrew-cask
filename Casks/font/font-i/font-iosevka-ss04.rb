cask "font-iosevka-ss04" do
  version "31.9.0"
  sha256 "30d4749e47c1479eca136371279cd2c1fadc94d2778d6b8c4c62d334be2eb4d5"

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
