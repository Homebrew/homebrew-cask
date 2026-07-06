cask "font-saikanji-balanced-solid-grid" do
  version "0.020"
  sha256 "3c919087f7f24c263823b4b3a470868c6906cd6c5ddbb4d47fe53d63aa19bc04"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced Solid Grid"
  desc "Regular Balanced variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced.Solid.Grid.ttf"
end
