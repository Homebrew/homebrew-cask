cask "protonvpn" do
  version "2.2.1"
  sha256 "7edce86180155738777970116a3579e668ad9537cab4020f1cf89c027a17c1e3"

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
  depends_on macos: ">= :catalina"

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
