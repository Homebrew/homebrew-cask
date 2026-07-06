cask "font-saikanji-balanced-light-gradient-grid" do
  version "0.020"
  sha256 "d8bb323db0c093434cb99355e41e6ae41e0a935835d06aab9c4c4244f72fe412"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced-Light.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced-Light Gradient Grid"
  desc "Light Balanced variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced-Light.Gradient.Grid.ttf"
end
