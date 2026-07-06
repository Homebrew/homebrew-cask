cask "font-saikanji-contrast-light-gradient-nogrid" do
  version "0.020"
  sha256 "67368779d917ca29e98999313ffc55c87db2c4ff5b35238375041708ea1f77ca"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast-Light.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast-Light Gradient No Grid"
  desc "Light Contrast variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast-Light.Gradient.ttf"
  # No zap stanza required
end
