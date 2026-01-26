cask "cloudflare-warp" do
  version "2025.10.186.0"
  sha256 "9e7a0e5cf4a938947235d082d3f600a012bc4b007efbea95c2066996b8cd8b65"

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

  pkg "Cloudflare_WARP_#{version}.pkg"

  uninstall launchctl: [
              "com.cloudflare.1dot1dot1dot1.macos.loginlauncherapp",
              "com.cloudflare.1dot1dot1dot1.macos.warp.daemon",
            ],
            quit:      "com.cloudflare.1dot1dot1dot1.macos",
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
