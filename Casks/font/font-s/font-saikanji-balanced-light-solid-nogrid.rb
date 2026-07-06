cask "font-saikanji-balanced-light-solid-nogrid" do
  version "0.020"
  sha256 "1f895f8f7a625a51f107f2489e164e5fbeedb7074cf2d26a8ddf4588781b6cf3"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced-Light.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced-Light Solid No Grid"
  desc "Light Balanced variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced-Light.Solid.ttf"
end
