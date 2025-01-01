cask "font-iosevka-ss04" do
  version "32.3.1"
  sha256 "4e8b1ab434aefc0f1228bef096368bd0b7463265b95581313f3ad7609d170d45"

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
