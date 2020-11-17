cask "anzeigenchef" do
  version "2.1.046"
  sha256 "151f38a8f13dae4235db187c3e4a90264cdbd36c02d8c590fababec0ef70bca3"

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
