cask "clocker" do
  version "21.03.01"
  sha256 "0644d6f5873a332e43e67a1aa8ca84fe98d9e7975b08dd58b0e06b8017a85455"

  url "https://github.com/n0shake/Clocker/releases/download/v#{version}/Clocker.app.zip",
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
