cask 'atok' do
  version '2016'
  sha256 'bda513644013a35c352624f74b4b918f35650e9a88155ecc758d978cddb1a9ae'

  url 'https://gate.justsystems.com/download/atok/ut/mac/at29try.dmg'
  name 'ATOK'
  homepage 'https://www.justsystems.com/jp/products/atokmac/'

  pkg "ATOK #{version} インストーラ.pkg"

  uninstall pkgutil:   [
                         "com.justsystems.atok#{version}.doc.pkg",
                         "com.justsystems.atok#{version}.pkg",
                         "com.justsystems.atok#{version}.quicklook.pkg",
                         "com.justsystems.atok#{version}.sync.pkg",
                         'com.justsystems.JustOnlineUpdate.pkg',
                         'com.justsystems.pkg.lma',
                       ],
            launchctl: [
                         'com.justsystems.inputmethod.atok29',
                         'com.justsystems.launchd.jslmaUI',
                         'com.justsystems.launchd.UpdateChecker',
                         'com.justsystems.launchd.Atok29.AlBg',
                       ]
end
