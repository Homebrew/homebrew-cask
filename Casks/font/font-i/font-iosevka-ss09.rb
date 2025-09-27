cask "font-iosevka-ss09" do
  version "33.3.1"
  sha256 "1be74d3d08d848be38d8c09bd336f9674545e4cb7ba8b8030d951697522604fa"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
