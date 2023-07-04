cask "clashx" do
  version "1.116.3"
  sha256 "87ee970bb388a183035d9125ae052b9f38bdfa569cbddd36fe293ab1ec33a8ae"

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
