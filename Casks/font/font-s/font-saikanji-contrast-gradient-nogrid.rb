cask "font-saikanji-contrast-gradient-nogrid" do
  version "0.020"
  sha256 "b266566e1bd665c8ec073eb35a6a4ba210eb1ecb439d84402395415250a46d81"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast Gradient No Grid"
  desc "Regular Contrast variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast.Gradient.ttf"
  # No zap stanza required
end
