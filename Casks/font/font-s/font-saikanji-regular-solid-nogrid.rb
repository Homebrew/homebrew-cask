cask "font-saikanji-regular-solid-nogrid" do
  version "0.020"
  sha256 "2ebc3a60a33da533b1e33e93764f547b57f30398e4bd02cf4c6ca05bf12ee81f"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular Solid No Grid"
  desc "Regular Regular variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular.Solid.ttf"
end
