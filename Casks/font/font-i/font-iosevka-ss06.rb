cask "font-iosevka-ss06" do
  version "34.9.0"
  sha256 "5112d62af591bdc812e96eca16f5baaeec741025f54ce1c1f8e2a35b3ed50578"

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
