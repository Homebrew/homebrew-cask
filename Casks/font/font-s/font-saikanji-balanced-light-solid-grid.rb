cask "font-saikanji-balanced-light-solid-grid" do
  version "0.020"
  sha256 "81ce2c1bd2643f226c57d52bae2e60b043796dcace684cc6c7087b1ad2d75c6e"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced-Light.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced-Light Solid Grid"
  desc "Light Balanced variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced-Light.Solid.Grid.ttf"
end
