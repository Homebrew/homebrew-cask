cask "cisco-proximity" do
  version "desktop-3.1.0"
  sha256 :no_check

  url "https://proximity.cisco.com/mac/Proximity.dmg"
  appcast "https://proximity.cisco.com/mac/version.txt"
  name "Cisco Proximity"
  homepage "https://proximity.cisco.com/"

  app "Cisco Proximity.app"

  uninstall launchctl: "com.cisco.proximity",
            signal:    [
              ["TERM", "com.cisco.experimental.Proximity"],
            ]

  zap trash: [
    "~/Library/Preferences/com.cisco.experimental.proximity.plist",
    "~/Library/Preferences/com.cisco.Proximity.plist",
    "~/Library/Saved Application State/com.cisco.experimental.Proximity.savedState",
  ]
end
