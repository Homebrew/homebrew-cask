cask 'atok' do
  version '2017'
  sha256 'f5a292543e2b15bd905d654bd5623b154ec311da071033556a03da3574971b83'

  url 'https://download.justsystems.com/isd-svp/download/mod/dl_file3/at30try.dmg'
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
                         'com.justsystems.inputmethod.atok30',
                         'com.justsystems.launchd.jslmaUI',
                         'com.justsystems.launchd.UpdateChecker',
                         'com.justsystems.launchd.Atok30.AlBg',
                       ]
end
