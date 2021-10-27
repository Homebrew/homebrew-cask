cask "praat" do
  version "6.1.55"
  sha256 "d799a8264b468ab4f0c00f5c02e25325d46cad62e9af18a10833fa6a3786a24e"

  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac.dmg",
      verified: "github.com/praat/praat/"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
