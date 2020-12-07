cask "anzeigenchef" do
  version "2.1.046"
  sha256 "453c3e092223d298ef53b968ebff4ffedb7e575050823dde859c3d97c085108c"

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
