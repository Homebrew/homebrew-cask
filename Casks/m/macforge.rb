cask "macforge" do
  version "1.1.0"
  sha256 "5a28c4f43b9b9bb868e26e45096804a1b7ae604fbf3ae857bed63d495a43ec50"

  url "https://github.com/w0lfschild/app_updates/raw/master/MacForge1/MacForge.#{version}.zip",
      verified: "github.com/w0lfschild/app_updates/"
  name "MacForge"
  desc "Plugin, App, and Theme store which includes plugin injection"
  homepage "https://www.macenhance.com/macforge"

  livecheck do
    url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/MacForge1/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "MacForge.app"

  uninstall launchctl:  "com.macenhance.MacForge.Injector",
            quit:       [
              "com.macenhance.MacForge",
              "com.macenhance.MacForge.PreferenceLoader",
              "com.macenhance.MacForgeDockTile",
              "com.macenhance.MacForgeHelper",
              "com.macenhance.SIPKit",
            ],
            login_item: "MacForgeHelper",
            delete:     [
              "/Library/Application Support/MacEnhance",
              "/Library/LaunchDaemons/com.macenhance.MacForge.Injector.plist",
              "/Library/PrivilegedHelperTools/com.macenhance.MacForge.Injector",
            ]

  zap trash: [
    "~/Library/Application Support/com.macenhance.MacForge",
    "~/Library/Application Support/MacEnhance",
    "~/Library/Caches/com.macenhance.MacForge",
    "~/Library/Caches/com.macenhance.MacForgeHelper",
    "~/Library/HTTPStorages/com.macenhance.MacForge",
    "~/Library/HTTPStorages/com.macenhance.MacForge.binarycookies",
    "~/Library/HTTPStorages/com.macenhance.MacForgeHelper",
    "~/Library/Preferences/com.macenhance.MacForge.plist",
    "~/Library/Preferences/com.macenhance.MacForgeHelper.plist",
    "~/Library/Saved Application State/com.macenhance.MacForge.savedState",
    "~/Library/WebKit/com.macenhance.MacForge",
  ]
end
