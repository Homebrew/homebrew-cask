cask "clashx" do
  version "1.30.2"
  sha256 "470244a89d40a0b74ba7fefc12bd18edc0cdd003d9f66a13277d18c497fb28f4"

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
