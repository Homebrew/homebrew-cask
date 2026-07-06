cask "font-saikanji-regular-light-gradient-nogrid" do
  version "0.020"
  sha256 "1504bbc73429710785fbb9485971b6e95588a1a1c12f356d734c861a78f39778"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular-Light.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular-Light Gradient No Grid"
  desc "Light Regular variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular-Light.Gradient.ttf"
  # No zap stanza required
end
