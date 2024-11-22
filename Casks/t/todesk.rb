cask "todesk" do
  version "4.7.5.1"
  sha256 "3c04d90360b0d2ba36dcec38939bff9fe157d9423457da8d7046e975b48f0208"

  url "https://dl.todesk.com/macos/ToDesk_#{version}.pkg",
      user_agent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36",
      referer:    "https://www.todesk.com/"
  name "ToDesk"
  desc "Remote control software"
  homepage "https://www.todesk.com/"

  disable! date: "2024-08-01", because: "download artifact behind CAPTCHA-verified url"

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
