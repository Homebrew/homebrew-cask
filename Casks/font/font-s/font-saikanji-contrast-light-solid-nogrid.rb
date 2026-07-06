cask "font-saikanji-contrast-light-solid-nogrid" do
  version "0.020"
  sha256 "3d95f3f6ad5abb553fcc7b2382f0cbbf9cf2275e73fa4a7e2b08f760be1ca0a9"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast-Light.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast-Light Solid No Grid"
  desc "Light Contrast variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast-Light.Solid.ttf"
end
