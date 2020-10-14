cask "protonvpn" do
  version "1.8.0"
  sha256 "549c9a19a75cc23e238b276fb27006b7c310434ce3539b588a990f2b43ba3e05"

  url "https://protonvpn.com/download/ProtonVPN_mac_v#{version}.dmg"
  appcast "https://protonvpn.com/download/macos-update2.xml"
  name "ProtonVPN"
  desc "VPN client focusing on security"
  homepage "https://protonvpn.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ProtonVPN.app"

  uninstall launchctl: "ch.protonvpn.ProtonVPNStarter",
            quit:      "ch.protonvpn.mac"

  zap trash: [
    "~/Library/Application Scripts/ch.protonvpn.ProtonVPNStarter",
    "~/Library/Application Scripts/ch.protonvpn.mac",
    "~/Library/Application Support/CrashReporter/ProtonVPN*",
    "~/Library/Application Support/ProtonVPN",
    "~/Library/Caches/SentryCrash/ProtonVPN",
    "~/Library/Caches/ch.protonvpn.mac",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/ch.protonvpn.mac",
    "~/Library/Containers/ch.protonvpn.*",
    "~/Library/Cookies/ch.protonvpn.mac.binarycookies",
    "~/Library/Logs/ProtonVPN.log",
    "~/Library/Preferences/ch.protonvpn.mac.plist",
    "~/Library/WebKit/ch.protonvpn.mac",
  ]
end
