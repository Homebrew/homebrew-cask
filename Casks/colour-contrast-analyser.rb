cask "colour-contrast-analyser" do
  version "3.1.3"
  sha256 "03c83561eb53031fca04c20fcd5c8dd4a08561b2e16ce044a8637591d03068c3"

  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-#{version}.dmg",
      verified: "github.com/ThePacielloGroup/CCAe/"
  name "Colour Contrast Analyser (CCA)"
  homepage "https://developer.paciellogroup.com/resources/contrastanalyser/"

  app "Colour Contrast Analyser (CCA).app"
end
