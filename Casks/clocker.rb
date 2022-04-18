cask "clocker" do
  version "22.05"
  sha256 "5d0ba12ca0c169c938bff5eb6dc4d1934c780aaa525c983b929046ceb88ae1d6"

  url "https://github.com/n0shake/Clocker/releases/download/#{version}/Clocker.v#{version}.zip",
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
