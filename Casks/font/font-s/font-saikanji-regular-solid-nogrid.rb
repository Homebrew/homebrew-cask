cask "font-saikanji-regular-solid-nogrid" do
  version "0.020"
  sha256 "def609861579217e4800f932beab99fb6a92f3f2661c52afa71f2c0b4f97d419"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular Solid No Grid"
  desc "Regular Regular variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular.Solid.ttf"
  # No zap stanza required
end
