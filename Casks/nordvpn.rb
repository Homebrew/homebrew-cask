cask "nordvpn" do
  version "6.2.0,160"
  sha256 "3db81f9c204cdecd2b272daef8504e3a05cdbe4cc9805d7f032c542284acf725"

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
