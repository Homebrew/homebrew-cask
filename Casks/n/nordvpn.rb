cask "nordvpn" do
  version "8.34.0"
  sha256 "9aed816c161a577a9b9d38cf23f5ff57d2cc656abb6eda83ef1028ac0b5c110f"

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
  depends_on macos: ">= :big_sur"

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
    "~/Library/Logs/NordVPN/",
    "~/Library/Preferences/com.nordvpn.macos.plist",
    "~/Library/Saved Application State/com.nordvpn.macos.savedState",
  ]
end
