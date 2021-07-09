cask "protonvpn" do
  version "2.0.3"
  sha256 "d162dad462e0d3f9df1cb143611e6383259eafe96c7b3c7724b1bcf4fbb737cc"

  url "https://protonvpn.com/download/ProtonVPN_mac_v#{version}.dmg"
  name "ProtonVPN"
  desc "VPN client focusing on security"
  homepage "https://protonvpn.com/"

  livecheck do
    url "https://protonvpn.com/download/macos-update3.xml"
    strategy :page_match
    regex(/ProtonVPN_mac_v?(\d+(?:\.\d+)*)\.dmg/i)
  end

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
