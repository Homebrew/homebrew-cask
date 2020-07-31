cask "colour-contrast-analyser" do
  version "3.1.1"
  sha256 "4beb8e9582b1b75fb7114a31b03d7a00147028993ea78f24590d6e183779ccd0"

  # github.com/ThePacielloGroup/CCAe was verified as official when first introduced to the cask
  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-#{version}.dmg"
  appcast "https://github.com/ThePacielloGroup/CCAe/releases.atom"
  name "Colour Contrast Analyser (CCA)"
  homepage "https://developer.paciellogroup.com/resources/contrastanalyser/"

  app "Colour Contrast Analyser (CCA).app"
end
