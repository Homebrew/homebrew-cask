cask "clashx" do
  version "1.90.0"
  sha256 "ab1d4a9cd7d5534ee981cc9b910defbd9e9c3526b99787454432a765636fee04"

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
    "/Library/LaunchDaemons/com.west2online.ClashX.ProxyConfigHelper.plist",
    "/Library/PrivilegedHelperTools/com.west2online.ClashX.ProxyConfigHelper",
  ],
            launchctl: "com.west2online.ClashX.ProxyConfigHelper",
            quit:      "com.west2online.ClashX"

  zap trash: [
    "~/Library/Application Support/com.west2online.ClashX",
    "~/Library/Caches/com.crashlytics.data/com.west2online.ClashX",
    "~/Library/Caches/com.west2online.ClashX",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.west2online.ClashX",
    "~/Library/Cookies/com.west2online.ClashX.binarycookies",
    "~/Library/Logs/ClashX",
    "~/Library/Preferences/com.west2online.ClashX.plist",
    "~/.config/clash/",
  ]
end
