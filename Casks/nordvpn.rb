cask "nordvpn" do
  version "7.17.1"
  sha256 "2c6cad36fcc0d6072b3f633afce75985732d0f880b0998516d35f22742ab4ef6"

  url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/#{version}/NordVPN.pkg",
      verified: "downloads.nordcdn.com/apps/macos/generic/"
  name "NordVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://nordvpn.com/"

  livecheck do
    url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
