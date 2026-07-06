cask "font-saikanji-contrast-light-gradient-grid" do
  version "0.020"
  sha256 "477a19bda10108bac8a86544b4702ea71341eb56671615846149f700454d1157"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast-Light.Gradient.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast-Light Gradient Grid"
  desc "Light Contrast variant of SaiKanji with gradient fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast-Light.Gradient.Grid.ttf"
end
