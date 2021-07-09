cask "clocker" do
  version "21.07.01"
  sha256 "e0a6db7e96cb94a399c947049c44fad431fd71a287c367a336308dce4841c1ce"

  url "https://github.com/n0shake/Clocker/releases/download/#{version}/Clocker.zip",
      verified: "github.com/n0shake/Clocker/"
  name "Clocker"
  desc "Menu bar timezone tracker"
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
