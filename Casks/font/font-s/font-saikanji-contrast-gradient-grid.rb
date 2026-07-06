cask "font-saikanji-contrast-gradient-grid" do
  version "0.020"
  sha256 "ba1f95b1a43c4411a1f1564ed88c9779bf5b55fbdd3b7841443df44315a48cf7"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast Gradient Grid"
  desc "Regular Contrast variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast.Gradient.Grid.ttf"
end
