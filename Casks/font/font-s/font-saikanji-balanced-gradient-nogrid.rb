cask "font-saikanji-balanced-gradient-nogrid" do
  version "0.020"
  sha256 "15c6ff7a2b24da0fe1c0c13a56e6aacdc41faed46ba5853da909f1fdfc9b44a7"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced Gradient No Grid"
  desc "Regular Balanced variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced.Gradient.ttf"
end
