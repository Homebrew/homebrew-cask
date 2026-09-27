cask "font-iosevka-ss04" do
  version "34.9.0"
  sha256 "70b50f723a2136a4d16ff4f8353227391d01d6ac4bfe5d0653a3d3a32e61500b"

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
