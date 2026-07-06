cask "font-saikanji-contrast-gradient-nogrid" do
  version "0.020"
  sha256 "ede0a882066a16bcbb27a716b85de27a7370dd8d482b8e1c383c97a8177250ee"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast Gradient No Grid"
  desc "Regular Contrast variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast.Gradient.ttf"
end
