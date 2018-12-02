cask 'hma-pro-vpn' do
  version '3.3.0.3'
  sha256 '7ace9037ff1e531dd501633a330d659651b03e9424b73e679577ffb6476b677c'

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
