cask 'avast-secureline-vpn' do
  version :latest
  sha256 :no_check

  url 'http://mac.sl.d.avast.com/mac/avast_secureline.dmg'
  name 'Avast SecureLine VPN'
  homepage 'https://www.avast.com/secureline-vpn#mac'

  pkg 'Avast SecureLine VPN.pkg'

  uninstall pkgutil:   'com.avast.secureline',
            launchctl: [
                         'com.avast.secureline*',
                         '*.com.avast.osx.secureline.avastsecurelinehelper',
                         'com.avast.secureline.home.userinit',
                       ],
            delete:    '/Applications/AvastSecureLine.app'

  zap trash: [
               '~/Library/Cookies/com.avast.osx.secureline.binarycookies',
               '~/Library/Caches/com.avast.osx.secureline',
               '~/Library/Group Containers/*.com.avast.osx.secureline*',
               '~/Library/Preferences/*.com.avast.osx.secureline.plist',
               '~/Library/Group Containers/*.group.com.avast.osx',
             ]
end
