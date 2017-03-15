cask 'avast-secureline-vpn' do
  version :latest
  sha256 :no_check

  url 'http://mac.sl.d.avast.com/mac/avast_secureline.dmg'
  name 'Avast SecureLine VPN'
  homepage 'https://www.avast.com/secureline-vpn#mac'

  pkg 'Avast SecureLine VPN.pkg'

  uninstall pkgutil:   'com.avast.secureline',
            launchctl: [
                         'com.avast.secureline.userinit',
                         'com.avast.secureline.update-agent',
                         '*.com.avast.osx.secureline.avastsecurelinehelper',
                       ]

  zap delete: [
                '~/Library/Cookies/com.avast.osx.secureline.binarycookies',
                '~/Library/Caches/com.avast.osx.secureline',
              ]
end
