cask "font-saikanji-regular-light-solid-grid" do
  version "0.020"
  sha256 "56ba1fc7a1ecc3e26a3a62397dd4ceb73197f94ee9816bd05bdd1ec65117a5af"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular-Light.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular-Light Solid Grid"
  desc "Light Regular variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular-Light.Solid.Grid.ttf"
end
