cask "praat" do
  version "6.1.47"
  sha256 "960c8544506f06362081958e7168af1f3c76b1ed471757f49c20c8bd6184aa74"

  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac.dmg",
      verified: "github.com/praat/praat/"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
