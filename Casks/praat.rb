cask "praat" do
  version "6.1.29"
  sha256 "1bfd4c9c028fbd3a60fc36a31ac67cd55c2f59e46fa1a1231f0f37a84688dfb7"

  # github.com/praat/praat/ was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast "https://github.com/praat/praat/releases.atom"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
