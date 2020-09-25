cask "praat" do
  version "6.1.21"
  sha256 "6a28480b34af15843650cb05a011b1d53a109a789c4b6fc9d3318a92e97af752"

  # github.com/praat/praat/ was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast "https://github.com/praat/praat/releases.atom"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
