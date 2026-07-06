cask "font-saikanji-contrast-light-solid-grid" do
  version "0.020"
  sha256 "95d29f7c944f12825b6dcf6ad6b7f07a5359cf832964cffbbe3d1779d5d48d9d"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast-Light.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast-Light Solid Grid"
  desc "Light Contrast variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast-Light.Solid.Grid.ttf"
  # No zap stanza required
end
