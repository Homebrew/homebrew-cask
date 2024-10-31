cask "todesk" do
  version "4.7.5.0"
  sha256 "5d30591e74c01c9b9007ceed587c43aa8458372d4b33cdce3fe1b04c30008d93"

  url "https://dl.todesk.com/macos/ToDesk_#{version}.pkg",
      user_agent: :fake,
      referer:    "https://www.todesk.com/"
  name "ToDesk"
  desc "Remote control software"
  homepage "https://www.todesk.com/"

  livecheck do
    url "https://www.todesk.com/download.html"
    regex(/ToDesk[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  auto_updates true

  pkg "ToDesk_#{version}.pkg"

  uninstall launchctl: [
              "com.youqu.todesk.client.startup",
              "com.youqu.todesk.desktop",
              "com.youqu.todesk.service",
              "com.youqu.todesk.startup",
            ],
            quit:      "com.youqu.todesk.mac",
            pkgutil:   "com.youqu.todesk.mac",
            delete:    "/Applications/ToDesk.app"

  zap trash: [
    "~/Library/Application Scripts/com.youqu.todesk.mac.LaunchHelper",
    "~/Library/Containers/com.youqu.todesk.mac.LaunchHelper",
    "~/Library/Group Containers/group.youqu.todesk",
    "~/Library/Preferences/com.youqu.todesk.mac.plist",
    "~/Library/Saved Application State/com.youqu.todesk.mac.savedState",
    "~/Library/ToDesk",
  ]
end
