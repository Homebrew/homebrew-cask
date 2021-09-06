cask "praat" do
  version "6.1.52"
  sha256 "f31fc9de2981e72d4c9d2a18648fa4efdd45780727163c34d960b4a78cf1a8ea"

  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac.dmg",
      verified: "github.com/praat/praat/"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
