cask "font-saikanji-contrast-solid-grid" do
  version "0.020"
  sha256 "1063ea381fd4d37f21be207c159312392db3cf5a3719b974aafac60db8152a2b"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast.Solid.Grid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast Solid Grid"
  desc "Regular Contrast variant of SaiKanji with solid fill and grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast.Solid.Grid.ttf"
end
