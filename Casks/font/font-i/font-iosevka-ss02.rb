cask "font-iosevka-ss02" do
  version "34.0.0"
  sha256 "e929a5b3a1a6ed78a1b9c40c9b02edd1af08dc719a1373dc8402d935a3e1f363"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
