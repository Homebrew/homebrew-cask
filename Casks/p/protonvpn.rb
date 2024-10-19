cask "protonvpn" do
  version "4.4.0"
  sha256 "438a646ba329e12215739a3a5198ccfb8bf99b9d665a104a3ba4353412b7189f"

  url "https://protonvpn.com/download/ProtonVPN_mac_v#{version}.dmg"
  name "ProtonVPN"
  desc "VPN client focusing on security"
  homepage "https://protonvpn.com/"

  livecheck do
    url "https://protonvpn.com/download/macos-update3.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ProtonVPN.app"

  uninstall launchctl: "ch.protonvpn.ProtonVPNStarter",
            quit:      "ch.protonvpn.mac"

  zap trash: [
    "~/Library/Application Scripts/ch.protonvpn.*",
    "~/Library/Application Support/CrashReporter/ProtonVPN*",
    "~/Library/Application Support/ProtonVPN",
    "~/Library/Caches/ch.protonvpn.mac",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/ch.protonvpn.mac",
    "~/Library/Caches/SentryCrash/ProtonVPN",
    "~/Library/Containers/ch.protonvpn.*",
    "~/Library/Cookies/ch.protonvpn.mac.binarycookies",
    "~/Library/Logs/ProtonVPN.log",
    "~/Library/Preferences/ch.protonvpn.mac.plist",
    "~/Library/WebKit/ch.protonvpn.mac",
  ]
end
