cask "font-saikanji-regular-light-solid-nogrid" do
  version "0.020"
  sha256 "a52f16cfb89bb96807ed6e9bd72d1e7d9a69f37b2847a401063aff812ee937f4"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular-Light.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular-Light Solid No Grid"
  desc "Light Regular variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular-Light.Solid.ttf"
  # No zap stanza required
end
