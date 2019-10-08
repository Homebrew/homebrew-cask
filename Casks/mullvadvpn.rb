cask 'mullvadvpn' do
  version '2019.8'
  sha256 '9574829c5fa915b9093808858352ad82cde3fc9f2b5e2c47e3bbb9bb7532ee45'

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
