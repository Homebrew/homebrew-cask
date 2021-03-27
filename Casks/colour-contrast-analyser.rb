cask "colour-contrast-analyser" do
  version "3.1.2"
  sha256 "fbc56bf2d07fc6500fa28c30b292b058a3f360c5bad55da3262bb40452100294"

  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-#{version}.dmg",
      verified: "github.com/ThePacielloGroup/CCAe/"
  name "Colour Contrast Analyser (CCA)"
  homepage "https://developer.paciellogroup.com/resources/contrastanalyser/"

  app "Colour Contrast Analyser (CCA).app"
end
