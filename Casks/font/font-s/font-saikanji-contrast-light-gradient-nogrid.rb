cask "font-saikanji-contrast-light-gradient-nogrid" do
  version "0.020"
  sha256 "7f0d3e8ac901a4bd2e8b976f5eb02aefa4c31382e6a026437aa575d90047048e"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast-Light.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast-Light Gradient No Grid"
  desc "Light Contrast variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast-Light.Gradient.ttf"
end
