cask "nordvpn" do
  version "10.14.0"
  sha256 "ec40cdd3512cac88a27b6922df94b88912bb9e27a4d3ef1391913fab4b72c3ce"

  url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/#{version}/NordVPN.pkg"
  name "NordVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://nordvpn.com/"

  livecheck do
    url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "NordVPN.pkg"

  uninstall launchctl:  [
              "com.nordvpn.macos.helper",
              "com.nordvpn.NordVPN.Helper",
            ],
            quit:       [
              "com.nordvpn.macos",
              "com.nordvpn.macos.NordVPNLauncher",
            ],
            login_item: "NordVPN",
            pkgutil:    "com.nordvpn.macos",
            delete:     [
              "/Library/PrivilegedHelperTools/com.nordvpn.macos.helper",
              "/Library/PrivilegedHelperTools/com.nordvpn.macos.ovpnDnsManager",
              "/Library/PrivilegedHelperTools/ovpn",
            ]

  zap trash: [
    "~/Library/Application Support/com.nordvpn.macos",
    "~/Library/Caches/com.nordvpn.macos",
    "~/Library/Containers/com.nordvpn.NordVPN.*",
    "~/Library/Cookies/com.nordvpn.macos.binarycookies",
    "~/Library/Logs/NordVPN",
    "~/Library/Preferences/com.nordvpn.macos.plist",
    "~/Library/Saved Application State/com.nordvpn.macos.savedState",
  ]
end
