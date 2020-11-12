cask "clashx" do
  version "1.30.4"
  sha256 "107e15c779ea18c9c32f9c9f9c67720b33cadfdc5ca8b19b6176769cf3847725"

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast "https://github.com/yichengchen/clashX/releases.atom"
  name "ClashX"
  desc "Rule-based custom proxy with GUI based on clash"
  homepage "https://github.com/yichengchen/clashX"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ClashX.app"

  uninstall delete:    [
    "/Library/PrivilegedHelperTools/com.west2online.ClashX.ProxyConfigHelper",
    "/Library/LaunchDaemons/com.west2online.ClashX.ProxyConfigHelper.plist",
  ],
            launchctl: "com.west2online.ClashX.ProxyConfigHelper",
            quit:      "com.west2online.ClashX"

  zap trash: [
    "~/Library/Application Support/com.west2online.ClashX",
    "~/Library/Cookies/com.west2online.ClashX.binarycookies",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.west2online.ClashX",
    "~/Library/Caches/com.west2online.ClashX",
    "~/Library/Caches/com.crashlytics.data/com.west2online.ClashX",
    "~/Library/Preferences/com.west2online.ClashX.plist",
    "~/Library/Logs/ClashX",
    "~/.config/clash/",
  ]
end
