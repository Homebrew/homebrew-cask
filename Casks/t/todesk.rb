cask "todesk" do
  version "4.7.6.5"
  sha256 "c40e43f602676bcd2410fccd08e18c60d4ec09943b07a09e85d2b122cfea1c1c"

  url "https://dl.todesk.com/macos/ToDesk_#{version}.pkg",
      user_agent: :fake,
      referer:    "https://www.todesk.com/"
  name "ToDesk"
  desc "Remote control software"
  homepage "https://www.todesk.com/"

  no_autobump! because: :requires_manual_review

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
