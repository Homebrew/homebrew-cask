cask 'mullvadvpn' do
  version '2020.5'
  sha256 '38936e672c4bcdc57ac7291da17d0cdfa61b4d28ff6d15a523e5e45e61540151'

  # github.com/mullvad/mullvadvpn-app/ was verified as official when first introduced to the cask
  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.pkg"
  appcast 'https://github.com/mullvad/mullvadvpn-app/releases.atom'
  name 'Mullvad VPN'
  homepage 'https://mullvad.net/'

  conflicts_with cask: 'mullvadvpn-beta'

  pkg "MullvadVPN-#{version}.pkg"

  uninstall pkgutil:   'net.mullvad.vpn',
            launchctl: 'net.mullvad.daemon'
end
