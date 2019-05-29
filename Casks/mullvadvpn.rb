cask 'mullvadvpn' do
  version '2019.4'
  sha256 'ba7845d474bdfd2dfa371e443bd8bea1ddd64f6848c3528dc66f1747e774d4ee'

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
