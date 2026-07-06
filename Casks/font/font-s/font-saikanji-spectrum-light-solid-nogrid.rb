cask "font-saikanji-spectrum-light-solid-nogrid" do
  version "0.020"
  sha256 "cb993dc0a77c11eb41fd3efbeb40513d78018757555285079958a54cd36c3f69"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum-Light.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum-Light Solid No Grid"
  desc "Light Spectrum variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum-Light.Solid.ttf"
end
