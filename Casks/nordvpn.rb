cask "nordvpn" do
  version "5.10.0"
  sha256 "df1ffa2bcc67c21eb458e313cd6b053c47bf20493600fbacc0676b8ab5ae4961"

  # downloads.nordcdn.com/ was verified as official when first introduced to the cask
  url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/#{version}/NordVPN.pkg"
  appcast "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml"
  name "NordVPN"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://nordvpn.com/"

  auto_updates true

  pkg "NordVPN.pkg"

  uninstall quit:       [
    "com.nordvpn.osx",
    "com.nordvpn.osx.NordVPNLauncher",
  ],
            launchctl:  [
              "com.nordvpn.osx.helper",
              "com.nordvpn.NordVPN.Helper",
            ],
            delete:     [
              "/Library/PrivilegedHelperTools/com.nordvpn.osx.helper",
              "/Library/PrivilegedHelperTools/com.nordvpn.osx.ovpnDnsManager",
            ],
            login_item: "NordVPN",
            pkgutil:    "com.nordvpn.osx"

  zap trash: [
    "~/Library/Application Support/com.nordvpn.osx",
    "~/Library/Caches/com.nordvpn.osx",
    "~/Library/Logs/NordVPN/",
    "~/Library/Preferences/com.nordvpn.osx.plist",
    "~/Library/Saved Application State/com.nordvpn.osx.savedState",
    "~/Library/Cookies/com.nordvpn.osx.binarycookies",
  ]
end
