cask 'mullvadvpn' do
  version '2019.6'
  sha256 'ee2997e3be380644a3588262bb75868eb68d98470ba7999f261c94fae1ed4328'

  # github.com/mullvad/mullvadvpn-app was verified as official when first introduced to the cask
  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg"
  appcast 'https://github.com/mullvad/mullvadvpn-app/releases.atom'
  name 'Mullvad VPN'
  homepage 'https://mullvad.net/'

  conflicts_with cask: 'mullvadvpn-beta'

  pkg "MullvadVPN-#{version}.pkg"

  uninstall pkgutil:   'net.mullvad.vpn',
            launchctl: 'net.mullvad.daemon'
end
