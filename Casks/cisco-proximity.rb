cask "cisco-proximity" do
  version "3.0.8"
  sha256 "82959daa34e50462da90c786bc888fb6aa16e5bbff583964742a440990d35a5c"

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
