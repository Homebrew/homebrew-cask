cask "font-saikanji-balanced-solid-grid" do
  version "0.020"
  sha256 "4c008aff019023377daaf474b89f9442878daa49ff2cc2cb65e412eeffac9e70"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced Solid Grid"
  desc "Regular Balanced variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced.Solid.Grid.ttf"
  # No zap stanza required
end
