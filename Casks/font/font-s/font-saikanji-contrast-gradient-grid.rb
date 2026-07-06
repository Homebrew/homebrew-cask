cask "font-saikanji-contrast-gradient-grid" do
  version "0.020"
  sha256 "bb40f2a9ddb5bc7af682ab876f03dec2a0c04c6ca30497e817a45361f0a7fb78"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast Gradient Grid"
  desc "Regular Contrast variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast.Gradient.Grid.ttf"
  # No zap stanza required
end
