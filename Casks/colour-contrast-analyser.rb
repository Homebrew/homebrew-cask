cask "colour-contrast-analyser" do
  version "3.1.2"
  sha256 "fbc56bf2d07fc6500fa28c30b292b058a3f360c5bad55da3262bb40452100294"

  # github.com/ThePacielloGroup/CCAe was verified as official when first introduced to the cask
  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-#{version}.dmg"
  appcast "https://github.com/ThePacielloGroup/CCAe/releases.atom"
  name "Colour Contrast Analyser (CCA)"
  homepage "https://developer.paciellogroup.com/resources/contrastanalyser/"

  app "Colour Contrast Analyser (CCA).app"
end
