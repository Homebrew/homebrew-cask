cask "font-saikanji-regular-gradient-nogrid" do
  version "0.020"
  sha256 "1c9d051649dfb5d80185e13160fba2923ae74168485a0c6feae937e5344ce52f"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular Gradient No Grid"
  desc "Regular Regular variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular.Gradient.ttf"
  # No zap stanza required
end
