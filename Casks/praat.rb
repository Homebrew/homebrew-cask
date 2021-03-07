cask "praat" do
  version "6.1.40"
  sha256 "96b2e57b136e3695af34417ca00efd60ff1d6b7b64675954ebd586ae25fbae56"

  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac.dmg",
      verified: "github.com/praat/praat/"
  appcast "https://github.com/praat/praat/releases.atom"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "http://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
