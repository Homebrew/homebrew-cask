cask "font-iosevka-ss12" do
  version "31.7.0"
  sha256 "3d92e6e98694e25b3de11d9c4b605cdc697df7070c6cc1845b8a0340039035d7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
