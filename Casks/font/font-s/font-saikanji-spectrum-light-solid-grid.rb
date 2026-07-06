cask "font-saikanji-spectrum-light-solid-grid" do
  version "0.020"
  sha256 "57962d7980432b7049d7a6bd6192a4dd57055df1082f2c435dea6a388c794bf1"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Spectrum-Light.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Spectrum-Light Solid Grid"
  desc "Light Spectrum variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Spectrum-Light.Solid.Grid.ttf"
end
