cask "anzeigenchef" do
  version "2.1.045"
  sha256 "2aad549ac64d485dbadda31f975d778a3ff2edd47f4b9979a77f7b97a3cf8dc0"

  url "https://anzeigenchef.roundcubes.de/downloads/mac/AnzeigenChef.app.zip"
  appcast "https://anzeigenchef.roundcubes.de/downloads/mac/appcast.xml"
  name "AnzeigenChef"
  homepage "https://anzeigenchef.roundcubes.de/"

  depends_on macos: ">= :sierra"

  app "AnzeigenChef.app"

  zap trash: [
    "~/Library/Preferences/com.roundcubes.AnzeigenChefV2.plist",
    "~/Library/Application Support/AnzeigenChef",
    "~/Library/Saved Application State/MG.AnzeigenChef.savedState",
    "~/Library/Application Support/CrashReporter/AnzeigenChef*.plist",
  ]
end
