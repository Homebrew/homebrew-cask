cask 'hma-pro-vpn' do
  version '3.3.0.3'
  sha256 '3eefe5560e271f77d8e06028d4f40b5851e581fe327746e56d17fea7607eabae'

  # s-mac-sl.avcdn.net was verified as official when first introduced to the cask
  url 'https://s-mac-sl.avcdn.net/macosx/privax/HMA-Pro-VPN.dmg'
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
