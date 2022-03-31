cask "cisco-proximity" do
  version "4.0.0"
  sha256 :no_check

  url "https://proximity.cisco.com/mac/Proximity.dmg"
  name "Cisco Proximity"
  desc "Content sharing and video conference system control"
  homepage "https://proximity.cisco.com/"

  livecheck do
    url "https://proximity.cisco.com/mac/version.txt"
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end

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
