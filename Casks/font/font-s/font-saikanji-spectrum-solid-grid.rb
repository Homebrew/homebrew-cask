cask "font-saikanji-spectrum-solid-grid" do
  version "0.020"
  sha256 "5342f2acef11b05d0791fe46d914bef343f93b05d4b34ea2c489c919a1ce4ba2"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum Solid Grid"
  desc "Regular Spectrum variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum.Solid.Grid.ttf"
end
