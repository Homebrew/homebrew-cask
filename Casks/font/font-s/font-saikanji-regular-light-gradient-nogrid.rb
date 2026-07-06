cask "font-saikanji-regular-light-gradient-nogrid" do
  version "0.020"
  sha256 "0230aab17275d468b6c51818b65d75c8b4a46da2b96736a522ce6868c77308b0"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular-Light.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular-Light Gradient No Grid"
  desc "Light Regular variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular-Light.Gradient.ttf"
end
