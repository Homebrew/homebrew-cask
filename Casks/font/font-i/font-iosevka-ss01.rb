cask "font-iosevka-ss01" do
  version "32.2.1"
  sha256 "d5974e5946d4f04582ad72a4cded508fe245cf5bc1af0d1166445b7f6adfe046"

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
