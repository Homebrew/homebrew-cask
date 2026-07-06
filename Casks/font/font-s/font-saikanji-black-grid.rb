cask "font-saikanji-black-grid" do
  version "0.020"
  sha256 "9b1686629bb487d2fe59e7d7898cc3d1c5f461c3f4f3723eb48109791c189fee"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Black.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Black Grid"
  desc "Monochrome Black variant of SaiKanji with black fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Black.Grid.ttf"
end
