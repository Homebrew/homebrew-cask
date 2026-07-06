cask "font-saikanji-contrast-light-solid-grid" do
  version "0.020"
  sha256 "e108a90ea61727328a9c259ee045fba4b3fd80418fdb862a6ee3f419e248f873"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast-Light.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast-Light Solid Grid"
  desc "Light Contrast variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast-Light.Solid.Grid.ttf"
end
