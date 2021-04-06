cask "praat" do
  version "6.1.41"
  sha256 "21a9fd6c35f1d35ec87b9fc1ee1cd3ed73e57af58fbf3d0451c3570f593a95d0"

  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac.dmg",
      verified: "github.com/praat/praat/"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
