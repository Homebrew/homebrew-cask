cask "todesk" do
  version "4.6.2.0"
  sha256 "ac5e3ecb4694f0a39fdef5319f55f88ae1c50afa760ed8f077b79425ff017c78"

  url "https://dl.todesk.com/macos/ToDesk_#{version}.pkg"
  name "ToDesk"
  desc "Remote control software"
  homepage "https://www.todesk.com/"

  livecheck do
    url "https://dl.todesk.com/macos/uplog.html"
    regex(%r{<div\sclass="text">(\d+(?:\.\d+)+)</div>}i)
  end

  auto_updates true

  pkg "ToDesk_#{version}.pkg"

  uninstall delete:    "/Applications/ToDesk.app",
            launchctl: [
              "com.youqu.todesk.desktop",
              "com.youqu.todesk.service",
              "com.youqu.todesk.startup",
              "com.youqu.todesk.client.startup",
            ],
            pkgutil:   "com.youqu.todesk.mac",
            quit:      "com.youqu.todesk.mac"

  zap trash: [
    "~/Library/Application Scripts/com.youqu.todesk.mac.LaunchHelper",
    "~/Library/Containers/com.youqu.todesk.mac.LaunchHelper",
    "~/Library/Group Containers/group.youqu.todesk",
    "~/Library/Preferences/com.youqu.todesk.mac.plist",
    "~/Library/ToDesk",
  ]
end
