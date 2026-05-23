cask "font-iosevka-ss16" do
  version "34.6.0"
  sha256 "4242522dd0801d6f1d06356f17fefdb1d8b575efdd4f7c199cbbfb15bce6317a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
