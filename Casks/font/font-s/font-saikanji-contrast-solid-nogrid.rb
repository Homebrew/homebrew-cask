cask "font-saikanji-contrast-solid-nogrid" do
  version "0.020"
  sha256 "903910d2c40b024369173cf2fd0a1222cac2d3258581075ca012cb97f0e31a2c"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast Solid No Grid"
  desc "Regular Contrast variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast.Solid.ttf"
  # No zap stanza required
end
