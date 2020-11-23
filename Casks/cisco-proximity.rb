cask "cisco-proximity" do
  version "3.1.0"
  sha256 "18c5087998a9728bfe4dbc192183086b8f0022387ca13ee4e7b404155d3f1744"

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
