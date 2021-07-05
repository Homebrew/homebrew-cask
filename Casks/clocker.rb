cask "clocker" do
  version "21.07.01"
  sha256 "4cc31af04b07634025b83d783ea67c6f2120053ddffb5ceed44b7361677a419f"

  url "https://github.com/n0shake/Clocker/releases/download/v#{version}/Clocker.zip",
      verified: "github.com/n0shake/Clocker/"
  name "Clocker"
  desc "Track timezones from your menubar"
  homepage "https://abhishekbanthia.com/clocker"

  app "Clocker.app"

  uninstall launchctl: "com.abhishek.ClockerHelper",
            quit:      "com.abhishek.Clocker"

  zap trash: [
    "~/Library/Application Scripts/com.abhishek.Clocker",
    "~/Library/Containers/com.abhishek.Clocker",
    "~/Library/Preferences/com.abhishek.Clocker.plist",
    "~/Library/Preferences/com.abhishek.ClockerHelper.plist",
    "~/Library/Preferences/com.abhishek.Clocker.prefs",
  ]
end
