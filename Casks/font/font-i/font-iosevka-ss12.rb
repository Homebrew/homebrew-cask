cask "font-iosevka-ss12" do
  version "33.2.2"
  sha256 "f51c3c45bce9b7fdd64467e6526828fa647853e166c4b1b27dbc4a80e6d0fa12"

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
