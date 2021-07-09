cask "colour-contrast-analyser" do
  version "3.1.4"
  sha256 "0a2ffa7c77fc33fe7a7512fe752eba7e88784fc15efb41576f3564dc85d10408"

  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-#{version}.dmg",
      verified: "github.com/ThePacielloGroup/CCAe/"
  name "Colour Contrast Analyser (CCA)"
  desc "Color contrast checker"
  homepage "https://developer.paciellogroup.com/resources/contrastanalyser/"

  app "Colour Contrast Analyser (CCA).app"
end
