cask "font-saikanji-balanced-solid-nogrid" do
  version "0.020"
  sha256 "6bde72f6547825e3756f50ffc0d1f02dc7f61e746e318c7babec6ee3a1b2bb68"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced Solid No Grid"
  desc "Regular Balanced variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced.Solid.ttf"
end
