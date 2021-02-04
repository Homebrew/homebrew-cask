cask "deskreen" do
  version "1.0.3"
  sha256 "ac4479de2c9e0c76049acef202d67b4dea6f106f07900e6b0e9c0eb50b0f98d0"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-#{version}.dmg", verified: "https://github.com/pavlobu/deskreen"
  appcast "https://github.com/pavlobu/deskreen/releases.atom"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  app "Deskreen.app"

  zap trash: [
    "~/Library/Application Support/Deskreen",
    "~/Library/Logs/Deskreen",
    "~/Library/Preferences/com.pavlobu.Deskreen.plist",
    "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
  ]
end
