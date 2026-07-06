cask "font-saikanji-balanced-gradient-grid" do
  version "0.020"
  sha256 "c22452708cf7d9b11ff68028d50fd9dd5997937d4018ab6af94d73656bfc3558"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced Gradient Grid"
  desc "Regular Balanced variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced.Gradient.Grid.ttf"
end
