cask 'atok' do
  version '2016'
  sha256 'bda513644013a35c352624f74b4b918f35650e9a88155ecc758d978cddb1a9ae'

  url 'https://gate.justsystems.com/download/atok/ut/mac/at29try.dmg'
  name 'ATOK'
  homepage 'http://www.justsystems.com/jp/products/atokmac/'

  pkg 'ATOK 2016 インストーラ.pkg'

  # uninstall script: '/Applications/JustSystems/ATOK\ 2016/ATOK\ Uninstaller.app/Contents/MacOS/ATOK\ Uninstaller'
  uninstall pkgutil:   ['com.justsystems.atok2016.doc.pkg',
                        'com.justsystems.atok2016.pkg',
                        'com.justsystems.atok2016.quicklook.pkg',
                        'com.justsystems.atok2016.sync.pkg',
                        'com.justsystems.JustOnlineUpdate.pkg',
                        'com.justsystems.pkg.lma'],
            launchctl: ['com.justsystems.inputmethod.atok29',
                        'com.justsystems.launchd.jslmaUI',
                        'com.justsystems.launchd.UpdateChecker',
                        'com.justsystems.launchd.Atok29.AlBg']
end
