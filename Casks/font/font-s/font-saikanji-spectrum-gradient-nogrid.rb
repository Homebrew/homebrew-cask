cask "font-saikanji-spectrum-gradient-nogrid" do
  version "0.020"
  sha256 "5e577759dd5c49e0f75037cda53816132e8923f689bc6e68834957eb7fefa443"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum Gradient No Grid"
  desc "Regular Spectrum variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum.Gradient.ttf"
end
