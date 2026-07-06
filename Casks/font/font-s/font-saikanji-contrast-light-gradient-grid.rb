cask "font-saikanji-contrast-light-gradient-grid" do
  version "0.020"
  sha256 "765192a6c21d044045b8217f4d4ee582e58d9c8a8bc777cd36ffd8337158bb43"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast-Light.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast-Light Gradient Grid"
  desc "Light Contrast variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast-Light.Gradient.Grid.ttf"
  # No zap stanza required
end
