cask "font-saikanji-regular-gradient-nogrid" do
  version "0.020"
  sha256 "b6a03e43d02d449c55e45a41d34d9b5e3b45a94e5f84c06d93c7b2f3c4f1ec47"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular Gradient No Grid"
  desc "Regular Regular variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular.Gradient.ttf"
end
