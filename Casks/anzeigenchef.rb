cask "anzeigenchef" do
  version "2.1.045"
  sha256 "9067315f8d7dc294be576758be3b9de99dc208e3171483dd740f0ee88f2ad063"

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
