cask "font-saikanji-regular-gradient-grid" do
  version "0.020"
  sha256 "afa11f47ee31203a8fea266bf902797e5408b89acad2c7b5ff61dbd39dc81f13"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular Gradient Grid"
  desc "Regular Regular variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular.Gradient.Grid.ttf"
  # No zap stanza required
end
