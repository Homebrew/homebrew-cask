cask 'avira-vpn' do
  version :latest
  sha256 :no_check

  # avira-update.com was verified as official when first introduced to the cask
  url 'https://install.avira-update.com/package/vpn/osx/int/vpn.pkg'
  name 'Avira Phantom VPN'
  homepage 'https://www.avira.com/en/avira-phantom-vpn/'

  depends_on macos: '>= :yosemite'

  pkg 'vpn.pkg'

  uninstall pkgutil:   'com.avira.pkg.AviraPhantomVpn',
            quit:      'com.avira.macvpn',
            launchctl: [
                         'org.phantomDaemon',
                         'org.openvpn',
                       ]

  zap delete: [
                '~/Library/Preferences/com.avira.macvpn.plist',
                '~/Library/Application Support/PhantomVPN',
                '~/Library/Caches/PhantomVPN',
                '/Library/Application Support/PhantomVPN',
              ]
end
