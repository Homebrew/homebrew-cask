cask "protonvpn" do
  version "1.7.1"
  sha256 "0f7efda5996f150d7beb5569a830a8dd490ef3592e55622506e314eff1d8b294"

  url "https://protonvpn.com/download/ProtonVPN_mac_v#{version}.dmg"
  appcast "https://protonvpn.com/download/macos-update2.xml"
  name "ProtonVPN"
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
