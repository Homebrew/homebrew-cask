cask "font-saikanji-spectrum-light-gradient-nogrid" do
  version "0.020"
  sha256 "e9a72e2ff6f1b54c362e13e2caba76a8e3755bf953af8161f3a0c41d53828ec1"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum-Light.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum-Light Gradient No Grid"
  desc "Light Spectrum variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum-Light.Gradient.ttf"
  # No zap stanza required
end
