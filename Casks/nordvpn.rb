cask "nordvpn" do
  version "6.0.3,155"
  sha256 "c29464c47a7a82e735a82fbdf46ae2d3dfbd0f1c22915f5181fd3fd6a00194eb"

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
