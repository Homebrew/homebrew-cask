cask 'kiwi-for-g-suite' do
  version '2.0.19v'
  sha256 '249143f062861705060d2358ea4bf1007d6e93d390336b9237b1d033e36868a4'

  # s3.amazonaws.com/kiwiforgsuite was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/kiwiforgsuite/mac/release/Kiwi+for+G+Suite.pkg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0e823ae8232540248fd3980052c56495/'
  name 'Kiwi For G Suite'
  homepage 'https://www.kiwiforgmail.com/'

  pkg 'Kiwi for G Suite.pkg'

  uninstall pkgutil: 'com.zive.kiwi.qb-pkg.gsuite',
            delete:  '/Applications/Kiwi for G Suite.app'
end
