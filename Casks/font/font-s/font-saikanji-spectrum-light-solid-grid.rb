cask "font-saikanji-spectrum-light-solid-grid" do
  version "0.020"
  sha256 "3a88bc10e34c3eb3ba57604736da31314b9a6848857b975dbcaa047a00a24eb6"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum-Light.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum-Light Solid Grid"
  desc "Light Spectrum variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum-Light.Solid.Grid.ttf"
  # No zap stanza required
end
