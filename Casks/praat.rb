cask "praat" do
  version "6.1.25"
  sha256 "4e3b436a63f303fa2f72b3aae1bc453365949a8a3984ffc7ec420d11e6853e18"

  # github.com/praat/praat/ was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast "https://github.com/praat/praat/releases.atom"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
