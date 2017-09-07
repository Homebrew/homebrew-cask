cask 'atok' do
  version '2017,30'
  sha256 'f5a292543e2b15bd905d654bd5623b154ec311da071033556a03da3574971b83'

  url "https://gate.justsystems.com/download/atok/ut/mac/at#{version.after_comma}try.dmg"
  name 'ATOK'
  homepage 'https://www.justsystems.com/jp/products/atokmac/'

  pkg "ATOK #{version.before_comma} インストーラ.pkg"

  uninstall pkgutil:   [
                         "com.justsystems.atok#{version.before_comma}.doc.pkg",
                         "com.justsystems.atok#{version.before_comma}.pkg",
                         "com.justsystems.atok#{version.before_comma}.quicklook.pkg",
                         "com.justsystems.atok#{version.before_comma}.sync.pkg",
                         'com.justsystems.JustOnlineUpdate.pkg',
                         'com.justsystems.pkg.lma',
                       ],
            launchctl: [
                         "com.justsystems.inputmethod.atok#{version.after_comma}",
                         'com.justsystems.launchd.jslmaUI',
                         'com.justsystems.launchd.UpdateChecker',
                         "com.justsystems.launchd.Atok#{version.after_comma}.AlBg",
                         'com.justsystems.OnlineUpdate',
                         'com.justsystems.launchd.jslmad',
                       ],
            quit:      'com.justsystems.UpdateChecker'
end
