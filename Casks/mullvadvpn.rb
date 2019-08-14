cask 'mullvadvpn' do
  version '2019.7'
  sha256 '0e11ef047328ab9096a2285553f0b8d40f7e9bbe62363a2f70cb802b7b60e61a'

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
