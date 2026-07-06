cask "font-saikanji-balanced-light-gradient-nogrid" do
  version "0.020"
  sha256 "a7a46e179a92e17e82c3e6081b2cadbbc205c5e6fbbabb283d628a597ef20fc2"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced-Light.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced-Light Gradient No Grid"
  desc "Light Balanced variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced-Light.Gradient.ttf"
end
