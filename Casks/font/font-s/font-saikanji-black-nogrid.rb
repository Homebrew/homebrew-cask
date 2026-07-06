cask "font-saikanji-black-nogrid" do
  version "0.020"
  sha256 "2aca6ed0dc8b2e8c942721881abc76b75e33fbb560a738abb2706001cd49f5a5"

  url "https://github.com/am517/SaiKanji/releases/download/v#{version}/SaiKanji.Black.ttf",
      verified: "github.com/am517/SaiKanji/"
  name "SaiKanji Black No Grid"
  desc "Monochrome Black variant of SaiKanji with black fill and no grid"
  homepage "https://saikanji.moore.is/"

  font "SaiKanji.Black.ttf"
end
