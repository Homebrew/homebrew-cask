cask "clashx" do
  version "1.50.1"
  sha256 "0295266db13e79c0c7280b272f9d961ceaba569eadcf78ae60490c70a6dc963e"

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  name "ClashX"
  desc "Rule-based custom proxy with GUI based on clash"
  homepage "https://github.com/yichengchen/clashX"

  livecheck do
    url :url
    strategy :github_latest
  end

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
