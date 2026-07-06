cask "font-saikanji-balanced-light-gradient-grid" do
  version "0.020"
  sha256 "b21374d8c9f887c2ed883d653ecf05f2812a49400bd662418e487506aefd970f"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced-Light.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced-Light Gradient Grid"
  desc "Light Balanced variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced-Light.Gradient.Grid.ttf"
  # No zap stanza required
end
