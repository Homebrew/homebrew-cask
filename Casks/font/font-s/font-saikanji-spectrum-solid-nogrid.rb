cask "font-saikanji-spectrum-solid-nogrid" do
  version "0.020"
  sha256 "e484201c261c5a11cdee0da7d374f028dca778bc19feeeacf9a0290e714be21e"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum Solid No Grid"
  desc "Regular Spectrum variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum.Solid.ttf"
end
