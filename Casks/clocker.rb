cask "clocker" do
  version "22.06"
  sha256 "683ab58e3d4636a5200c3a31982185abe02adedc60fc07ddc7dfd30db8a5acba"

  url "https://github.com/n0shake/Clocker/releases/download/#{version}/Clocker.zip",
      verified: "github.com/n0shake/Clocker/"
  name "Clocker"
  desc "Menu bar timezone tracker and compact calendar"
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
