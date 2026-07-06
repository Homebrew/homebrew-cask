cask "font-saikanji-spectrum-light-gradient-nogrid" do
  version "0.020"
  sha256 "b34456abddffde5b2546e34ae3756376cf8ce9468fa49bd27865d32afaa0a733"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum-Light.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum-Light Gradient No Grid"
  desc "Light Spectrum variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum-Light.Gradient.ttf"
end
