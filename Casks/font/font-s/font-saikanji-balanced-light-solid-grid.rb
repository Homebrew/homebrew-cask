cask "font-saikanji-balanced-light-solid-grid" do
  version "0.020"
  sha256 "34ffdd85df6734c00a296e6a25b9d7f429cff850687f8c4aacefa96a23419710"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Balanced-Light.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Balanced-Light Solid Grid"
  desc "Light Balanced variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Balanced-Light.Solid.Grid.ttf"
  # No zap stanza required
end
