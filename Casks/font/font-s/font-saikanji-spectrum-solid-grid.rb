cask "font-saikanji-spectrum-solid-grid" do
  version "0.020"
  sha256 "66861f1ce3d1d4e1432fb55107857260bafd46439ba95a2863c716b8f8f00510"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum Solid Grid"
  desc "Regular Spectrum variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum.Solid.Grid.ttf"
  # No zap stanza required
end
