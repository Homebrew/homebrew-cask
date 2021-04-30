cask "praat" do
  version "6.1.42"
  sha256 "46722fb1e8b1c7f5ddb3ad1081e9a9e3944240a355a46ad4040583cf50e17791"

  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac.dmg",
      verified: "github.com/praat/praat/"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
