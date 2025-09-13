cask "font-iosevka-ss12" do
  version "33.3.0"
  sha256 "ba3983d2e592cbba4d2b45a32a9c87a16d71d5384ff5c3e6b4a2d0b35e039496"

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
