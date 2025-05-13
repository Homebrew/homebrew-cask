cask "cloudflare-warp" do
  version "2025.4.929.0"
  sha256 "6ac445b197c68e76659bbce89937a8d42df9b7bc7c03dbcf3c9ffaf40e2c7b5f"

  url "https://downloads.cloudflareclient.com/v1/download/macos/version/#{version}",
      verified: "downloads.cloudflareclient.com/v1/download/macos/"
  name "Cloudflare WARP"
  desc "Free app that makes your Internet safer"
  homepage "https://cloudflarewarp.com/"

  livecheck do
    url "https://downloads.cloudflareclient.com/v1/update/sparkle/macos/ga"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "cloudflare-warp@beta"
  depends_on macos: ">= :catalina"

  pkg "Cloudflare_WARP_#{version}.pkg"

  uninstall launchctl: [
              "com.cloudflare.1dot1dot1dot1.macos.loginlauncherapp",
              "com.cloudflare.1dot1dot1dot1.macos.warp.daemon",
            ],
            quit:      "com.cloudflare.1dot1dot1dot1.macos",
            script:    {
              executable: "/Applications/Cloudflare WARP.app/Contents/Resources/uninstall.sh",
              sudo:       true,
            },
            pkgutil:   "com.cloudflare.1dot1dot1dot1.macos",
            delete:    [
              "/usr/local/bin/warp-cli",
              "/usr/local/bin/warp-dex",
              "/usr/local/bin/warp-diag",
            ]

  zap trash: [
    "/Library/LaunchDaemons/com.cloudflare.1dot1dot1dot1.macos.warp.daemon.plist",
    "~/Library/Application Scripts/com.cloudflare.1dot1dot1dot1.macos.loginlauncherapp",
    "~/Library/Application Support/com.cloudflare.1dot1dot1dot1.macos",
    "~/Library/Caches/com.cloudflare.1dot1dot1dot1.macos",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.cloudflare.1dot1dot1dot1.macos",
    "~/Library/Containers/com.cloudflare.1dot1dot1dot1.macos.loginlauncherapp",
    "~/Library/HTTPStorages/com.cloudflare.1dot1dot1dot1.macos",
    "~/Library/HTTPStorages/com.cloudflare.1dot1dot1dot1.macos.binarycookies",
    "~/Library/Preferences/com.cloudflare.1dot1dot1dot1.macos.plist",
    "~/Library/WebKit/com.cloudflare.1dot1dot1dot1.macos",
  ]
end
