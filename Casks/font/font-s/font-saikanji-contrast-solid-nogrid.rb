cask "font-saikanji-contrast-solid-nogrid" do
  version "0.020"
  sha256 "d6c1783b51da78922f5c5c16ed26eb003d4e5e1cab5da9d613cf2dfadace4e27"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Contrast.Solid.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Contrast Solid No Grid"
  desc "Regular Contrast variant of SaiKanji with solid fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Contrast.Solid.ttf"
end
