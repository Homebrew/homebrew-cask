cask "font-saikanji-balanced-gradient-nogrid" do
  version "0.020"
  sha256 "73d3bbaee11e945d5b090ba6a3d45ce38c9d73bacc05224731f49f03b235cbfa"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced Gradient No Grid"
  desc "Regular Balanced variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced.Gradient.ttf"
  # No zap stanza required
end
