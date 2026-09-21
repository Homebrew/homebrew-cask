cask "cloudflare-warp@beta" do
  version "2026.8.1755.1"
  sha256 "43f349a2976fb4d7b3eb90994dfe2050625e81eb4b5f438fdfcfe2c5242ff7ac"

  url "https://downloads.cloudflareclient.com/v1/download/macos/version/#{version}"
  name "Cloudflare WARP"
  desc "Free app that makes your Internet safer"
  homepage "https://cloudflarewarp.com/"

  livecheck do
    url "https://downloads.cloudflareclient.com/v1/update/sparkle/macos/beta"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "cloudflare-warp"
  depends_on macos: :sonoma

  pkg "Cloudflare_WARP_#{version}.pkg"

  uninstall launchctl: [
              "com.cloudflare.1dot1dot1dot1.macos.loginlauncherapp",
              "com.cloudflare.1dot1dot1dot1.macos.warp.daemon",
              "com.cloudflare.warp.updater",
            ],
            quit:      "com.cloudflare.1dot1dot1dot1.macos",
            pkgutil:   "com.cloudflare.1dot1dot1dot1.macos",
            delete:    [
              "/usr/local/bin/warp-cli",
              "/usr/local/bin/warp-dex",
              "/usr/local/bin/warp-diag",
            ]

  zap script: {
        executable: "/Applications/Cloudflare WARP.app/Contents/Resources/uninstall.sh",
        sudo:       true,
      },
      trash:  [
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
