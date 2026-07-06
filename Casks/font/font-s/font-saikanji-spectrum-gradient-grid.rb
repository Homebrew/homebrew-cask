cask "font-saikanji-spectrum-gradient-grid" do
  version "0.020"
  sha256 "9bbdf64dc7a9fc5002c2d34dba0a97299f7f00aa0d3d01935413ec9aef041c39"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum Gradient Grid"
  desc "Regular Spectrum variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum.Gradient.Grid.ttf"
end
