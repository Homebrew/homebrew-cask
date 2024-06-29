cask "cloudflare-warp" do
  version "2024.6.416.0,20240628.6"
  sha256 "d3336cedf6e835408bd8cb3122c3fad26374faca910da0b96171ad59b0020dd6"

  url "https://1111-releases.cloudflareclient.com/mac/Cloudflare_WARP_#{version.csv.first}.pkg",
      verified: "1111-releases.cloudflareclient.com/mac/"
  name "Cloudflare WARP"
  desc "Free app that makes your Internet safer"
  homepage "https://cloudflarewarp.com/"

  livecheck do
    # :sparkle strategy using appcenter url cannot be used - see below link
    # https://github.com/Homebrew/homebrew-cask/pull/109118#issuecomment-887184248
    url "https://1111-releases.cloudflareclient.com/mac/Cloudflare_WARP.zip"
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "Cloudflare_WARP_#{version.csv.first}.pkg"

  uninstall launchctl: "com.cloudflare.1dot1dot1dot1.macos.loginlauncherapp",
            script:    {
              executable: "/Applications/Cloudflare WARP.app/Contents/Resources/uninstall.sh",
              input:      ["Y\n"],
              sudo:       true,
            }

  zap trash: [
    "~/Library/Application Scripts/com.cloudflare.1dot1dot1dot1.macos.loginlauncherapp",
    "~/Library/Application Support/com.cloudflare.1dot1dot1dot1.macos",
    "~/Library/Caches/com.cloudflare.1dot1dot1dot1.macos",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.cloudflare.1dot1dot1dot1.macos",
    "~/Library/Containers/com.cloudflare.1dot1dot1dot1.macos.loginlauncherapp",
    "~/Library/HTTPStorages/com.cloudflare.1dot1dot1dot1.macos",
    "~/Library/HTTPStorages/com.cloudflare.1dot1dot1dot1.macos.binarycookies",
    "~/Library/Preferences/com.cloudflare.1dot1dot1dot1.macos.plist",
  ]
end
