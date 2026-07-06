cask "font-saikanji-regular-gradient-grid" do
  version "0.020"
  sha256 "db5d2234aa8fe840cf6923230e8819364bdf3b706d94fb4c2f7dbe0a270855be"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular Gradient Grid"
  desc "Regular Regular variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular.Gradient.Grid.ttf"
end
