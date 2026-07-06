cask "font-saikanji-regular-light-gradient-grid" do
  version "0.020"
  sha256 "5743cbb06b448d8ece54696431f9d01feac7cfe6c8bb290ed736616009ba3cf2"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular-Light.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular-Light Gradient Grid"
  desc "Light Regular variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular-Light.Gradient.Grid.ttf"
  # No zap stanza required
end
