cask "font-saikanji-regular-solid-grid" do
  version "0.020"
  sha256 "4c9fb3fe1295f5a7e9625e3a0e4580a7a95511f588c15a83087258046c1a7d60"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular Solid Grid"
  desc "Regular Regular variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular.Solid.Grid.ttf"
end
