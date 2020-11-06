cask "mullvadvpn" do
  version "2020.6"
  sha256 "b830aefbf7fc51c6e53745e793f173e15e1d1a7fa59e8716fcd51a642b840bd1"

  # github.com/mullvad/mullvadvpn-app/ was verified as official when first introduced to the cask
  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg"
  appcast "https://github.com/mullvad/mullvadvpn-app/releases.atom"
  name "Mullvad VPN"
  desc "VPN client"
  homepage "https://mullvad.net/"

  conflicts_with cask: "mullvadvpn-beta"

  pkg "MullvadVPN-#{version}.pkg"

  uninstall pkgutil:   "net.mullvad.vpn",
            launchctl: "net.mullvad.daemon"
end
