cask "clashx-pro" do
  version "1.31.3.2"
  sha256 :no_check

  url "https://appcenter-filemanagement-distrib4ede6f06e.azureedge.net/81c6a8b4-23e4-478c-a2f4-cff361d2d8b1/ClashX.dmg?sv=2019-02-02&sr=c&sig=D2FUL5wopTPEcPDdFlVpoY5jcxpnH9IJUuYrD59Nu30%3D&se=2021-02-20T15%3A17%3A59Z&sp=r",
      verified: "https://appcenter-filemanagement-distrib4ede6f06e.azureedge.net"
  appcast "https://api.appcenter.ms/v0.1/public/sparkle/apps/1cd052f7-e118-4d13-87fb-35176f9702c1"
  name "ClashX Pro"
  desc "Rule based proxy base on Clash"
  homepage "https://github.com/yichengchen/clashX"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ClashX Pro.app"

  uninstall delete:    [
    "/Library/PrivilegedHelperTools/com.west2online.ClashXPro.ProxyConfigHelper",
    "/Library/LaunchDaemons/com.west2online.ClashXPro.ProxyConfigHelper.plist",
  ],
            launchctl: "com.west2online.ClashXPro.ProxyConfigHelper",
            quit:      "com.west2online.ClashXPro"

  zap trash: [
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.west2online.ClashXPro",
    "~/Library/Application Support/com.west2online.ClashXPro",
    "~/Library/Caches/com.west2online.ClashXPro",
    "~/Library/Preferences/com.west2online.ClashXPro.plist",
    "~/Library/Logs/ClashX Pro",
  ]
end
