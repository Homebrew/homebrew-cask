cask "font-saikanji-black-nogrid" do
  version "0.020"
  sha256 "55c5aef5b1c0786caa67552edda4d1513e2a681e2d38756b6298e14d1398f43d"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Black.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Black No Grid"
  desc "Monochrome Black variant of SaiKanji with black fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Black.ttf"
  # No zap stanza required
end
