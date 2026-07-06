cask "font-saikanji-regular-light-solid-nogrid" do
  version "0.020"
  sha256 "c1ed93c8566fd543ccd98c78f05441bd97589b1b54131c28dd5364f4eaae4959"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular-Light.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular-Light Solid No Grid"
  desc "Light Regular variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular-Light.Solid.ttf"
end
