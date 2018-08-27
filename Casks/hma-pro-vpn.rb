cask 'hma-pro-vpn' do
  version '3.2.11.2'
  sha256 '77ef3863352702697052dbbec5eff6087a5e2b5f18bde70827e98be748628978'

  # d1llq9kjmh5kle.cloudfront.net/HMA-Pro-VPN-macOS- was verified as official when first introduced to the cask
  url "https://d1llq9kjmh5kle.cloudfront.net/HMA-Pro-VPN-macOS-#{version}.dmg"
  name 'HMA! Pro VPN'
  name 'HideMyAss! Pro VPN'
  homepage 'https://www.hidemyass.com/index'

  installer manual: 'Install HMA! Pro VPN.app'

  uninstall launchctl: 'com.privax.hmaprovpn.helper',
            quit:      'com.privax.hmaprovpn.helper',
            delete:    [
                         '/Applications/HMA! Pro VPN.app',
                         '/Library/PrivilegedHelperTools/com.privax.hmaprovpn.helper',
                       ]

  zap trash: [
               '~/Library/Preferences/com.privax.hmaprovpn.plist',
               '~/Library/Saved Application State/com.privax.hmaprovpn.savedState',
             ]
end
