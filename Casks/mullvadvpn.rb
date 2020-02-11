cask 'mullvadvpn' do
  version '2020.1'
  sha256 '0d1446ef79ca185017a77afa48eb2d1a30fabfbd78f758d072d37ec53aabed4b'

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
