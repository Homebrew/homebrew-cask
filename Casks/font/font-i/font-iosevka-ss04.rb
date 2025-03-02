cask "font-iosevka-ss04" do
  version "33.0.1"
  sha256 "c6fc8423bc5b44472971a98e742021fda0e4a481280e67a29ec0ff403b0c3723"

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
