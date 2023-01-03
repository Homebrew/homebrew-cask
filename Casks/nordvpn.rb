cask "nordvpn" do
  version "7.14.1,211"
  sha256 "65a7d4aca18e898049754dc2a6203cf647a784c173d1aa59f41ac3a3e6bb89b3"

  url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/#{version.csv.first}/NordVPN.pkg",
      verified: "downloads.nordcdn.com/"
  name "NordVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://nordvpn.com/"

  livecheck do
    url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "NordVPN.pkg"

  uninstall quit:       [
              "com.nordvpn.macos",
              "com.nordvpn.macos.NordVPNLauncher",
            ],
            launchctl:  [
              "com.nordvpn.macos.helper",
              "com.nordvpn.NordVPN.Helper",
            ],
            delete:     [
              "/Library/PrivilegedHelperTools/com.nordvpn.macos.helper",
              "/Library/PrivilegedHelperTools/com.nordvpn.macos.ovpnDnsManager",
              "/Library/PrivilegedHelperTools/ovpn",
            ],
            login_item: "NordVPN",
            pkgutil:    "com.nordvpn.macos"

  zap trash: [
    "~/Library/Application Support/com.nordvpn.macos",
    "~/Library/Caches/com.nordvpn.macos",
    "~/Library/Cookies/com.nordvpn.macos.binarycookies",
    "~/Library/Logs/NordVPN/",
    "~/Library/Preferences/com.nordvpn.macos.plist",
    "~/Library/Saved Application State/com.nordvpn.macos.savedState",
  ]
end
