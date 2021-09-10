cask "praat" do
  version "6.1.53"
  sha256 "56c19fbfb33ac2a256406cc5bee592369bca779b07e34a4e12b5efd8d974b67d"

  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac.dmg",
      verified: "github.com/praat/praat/"
  name "Praat"
  desc "Doing phonetics by computer"
  homepage "https://www.fon.hum.uva.nl/praat/"

  app "Praat.app"
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: "praat"
end
