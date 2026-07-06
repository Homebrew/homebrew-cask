cask "font-saikanji-balanced-light-solid-nogrid" do
  version "0.020"
  sha256 "5263f7bf8f2b36aac37eac9c959b01be514912f2521758f37529570b54115c38"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced-Light.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced-Light Solid No Grid"
  desc "Light Balanced variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced-Light.Solid.ttf"
  # No zap stanza required
end
