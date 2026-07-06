cask "font-saikanji-regular-light-gradient-grid" do
  version "0.020"
  sha256 "ea6bd820d15773505d2ea0d7fc8131aeece75cf730fbb3fabe01c6f8f088f1c5"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular-Light.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular-Light Gradient Grid"
  desc "Light Regular variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular-Light.Gradient.Grid.ttf"
end
