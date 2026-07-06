cask "font-saikanji-balanced-gradient-grid" do
  version "0.020"
  sha256 "bddaf36b0dd958663b31b226cce2a6b2dd52478dc287835ce520ad598ae6806a"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced Gradient Grid"
  desc "Regular Balanced variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced.Gradient.Grid.ttf"
  # No zap stanza required
end
