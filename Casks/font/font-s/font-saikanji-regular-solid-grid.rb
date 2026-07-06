cask "font-saikanji-regular-solid-grid" do
  version "0.020"
  sha256 "3d1b2f040644d9b8440dfb8875f1e66484f8799162715e676e96e327439be462"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Regular.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Regular Solid Grid"
  desc "Regular Regular variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Regular.Solid.Grid.ttf"
  # No zap stanza required
end
