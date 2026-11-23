cask "nordvpn" do
  version "10.16.0"
  sha256 "423810aafc560e47a9bf04ebc3af06f70f1a63c64554c96a9db3478702be98bb"

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
    "~/Library/HTTPStorages/com.nordvpn.macos",
    "~/Library/Logs/NordVPN",
    "~/Library/Preferences/com.nordvpn.macos.plist",
    "~/Library/Preferences/group.com.nordvpn.macos.firebase.plist",
    "~/Library/Saved Application State/com.nordvpn.macos.savedState",
  ]
end
