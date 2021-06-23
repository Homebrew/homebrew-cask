cask "praat" do
  version "6.1.50"
  sha256 "d9e3dbd3b32afa33e0708b72e78ec15dce3e0b0f01b29d9d9d30eb3c4f8c8341"

  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac.dmg",
      verified: "github.com/praat/praat/"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
