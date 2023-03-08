cask "mullvadvpn" do
  version "2023.2"
  sha256 "8a102618468740df801c97b240ccff07f56aea92072aa0727a5c802f0321bfea"

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
  depends_on macos: ">= :big_sur"

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
