cask "font-iosevka-ss13" do
  version "33.2.0"
  sha256 "2c8ec0fbc804ed88d263fd1aaf04856e4188511af5c419d323d479be1f812842"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
