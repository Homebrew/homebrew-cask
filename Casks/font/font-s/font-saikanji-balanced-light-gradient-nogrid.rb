cask "font-saikanji-balanced-light-gradient-nogrid" do
  version "0.020"
  sha256 "bdef308af1b6431515426f14b4203d14a38e8bf2e3ff4f06b7b1a516032ea1df"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced-Light.Gradient.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced-Light Gradient No Grid"
  desc "Light Balanced variant of SaiKanji with gradient fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced-Light.Gradient.ttf"
  # No zap stanza required
end
