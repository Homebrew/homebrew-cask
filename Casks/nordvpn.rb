cask "nordvpn" do
  version "6.6.1,167"
  sha256 "80144b64333f82ae0b2993f937dceab1feed7d1532ac18cbaf3f9fdcf304f6e7"

  url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/#{version.before_comma}/NordVPN.pkg",
      verified: "downloads.nordcdn.com/"
  name "NordVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://nordvpn.com/"

  livecheck do
    url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml"
    strategy :sparkle
  end

  auto_updates true

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
            ],
            login_item: "NordVPN",
            pkgutil:    "com.nordvpn.macos"

  zap trash: [
    "~/Library/Application Support/com.nordvpn.macos",
    "~/Library/Caches/com.nordvpn.macos",
    "~/Library/Logs/NordVPN/",
    "~/Library/Preferences/com.nordvpn.macos.plist",
    "~/Library/Saved Application State/com.nordvpn.macos.savedState",
    "~/Library/Cookies/com.nordvpn.macos.binarycookies",
  ]
end
