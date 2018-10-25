cask 'mullvadvpn' do
  version '2018.4'
  sha256 'a6102d263018dd86c235d98e43da38c2b3e9da3aba38662f1fd85cf70df00099'

  # github.com/mullvad/mullvadvpn-app was verified as official when first introduced to the cask
  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg"
  appcast 'https://github.com/mullvad/mullvadvpn-app/releases.atom'
  name 'Mullvad'
  homepage 'https://mullvad.net/'

  conflicts_with cask: 'mullvad-vpn-beta'

  pkg "MullvadVPN-#{version}.pkg"

  uninstall pkgutil:   'net.mullvad.vpn',
            launchctl: 'net.mullvad.daemon'
end
