cask "font-saikanji-spectrum-solid-nogrid" do
  version "0.020"
  sha256 "e15ce30f3ef4482518529f39da63d1c1dbf0a3e1732643be8ebfe8c9a3d68e5d"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum Solid No Grid"
  desc "Regular Spectrum variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum.Solid.ttf"
  # No zap stanza required
end
