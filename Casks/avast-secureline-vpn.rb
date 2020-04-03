cask 'avast-secureline-vpn' do
  version :latest
  sha256 :no_check

  url 'http://mac.sl.d.avast.com/mac/avast_secureline.dmg'
  name 'Avast SecureLine VPN'
  homepage 'https://www.avast.com/secureline-vpn#mac'

  pkg 'Avast SecureLine VPN.pkg'

  uninstall pkgutil:   'com.avast.secureline',
            launchctl: [
                         'com.avast.secureline.update',
                         'com.avast.secureline.uninstall',
                         'com.avast.secureline.service',
                         'com.avast.secureline.init',
                         'com.avast.secureline.burger',
                         'com.avast.secureline.userinit',
                         'com.avast.secureline.update-agent',
                         # '6H4HRTU5E3' seems like a random string, but cursory investigation shows
                         # this launchd job has the same prefix when installed in other environments.
                         # Also multiple results for this in Google
                         '6H4HRTU5E3.com.avast.osx.secureline.avastsecurelinehelper',
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
