cask "mullvadvpn" do
  version "2023.1"
  sha256 "35c23e126ad10a34d5a8ca0262caf60112db6136f92d6878272b51c36b925f7a"

  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg",
      verified: "github.com/mullvad/mullvadvpn-app/"
  name "Mullvad VPN"
  desc "VPN client"
  homepage "https://mullvad.net/"

  livecheck do
    url "https://mullvad.net/download/app/pkg/latest/"
    strategy :header_match
  end

  conflicts_with cask: "homebrew/cask-versions/mullvadvpn-beta"
  depends_on macos: ">= :mojave"

  pkg "MullvadVPN-#{version}.pkg"

  uninstall pkgutil:   "net.mullvad.vpn",
            launchctl: "net.mullvad.daemon",
            delete:    [
              "/Library/Caches/mullvad-vpn",
              "/Library/LaunchDaemons/net.mullvad.daemon.plist",
              "/var/log/mullvad-vpn",
            ]

  zap trash: [
    "/etc/mullvad-vpn",
    "~/Library/Application Support/Mullvad VPN",
    "~/Library/Logs/Mullvad VPN",
    "~/Library/Preferences/net.mullvad.vpn.plist",
  ]
end
