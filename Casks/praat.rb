cask "praat" do
  version "6.1.23"
  sha256 "e4e56135a9b7b1535b3129c277a7f85d1429234d602f3fafc452dc3e51aad3ad"

  # github.com/praat/praat/ was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast "https://github.com/praat/praat/releases.atom"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
