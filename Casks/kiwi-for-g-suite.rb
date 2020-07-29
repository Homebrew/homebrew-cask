cask 'kiwi-for-g-suite' do
  version '2.0.34v'
  sha256 '782037a9536a2bdee4f2937ef1b0543c2e530e7ca4d8d306e3058a38a9f92fe5'

  # kiwiforgsuite.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://kiwiforgsuite.s3.amazonaws.com/mac/release/Kiwi+for+G+Suite.pkg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0e823ae8232540248fd3980052c56495/'
  name 'Kiwi For G Suite'
  homepage 'https://www.kiwiforgmail.com/'

  pkg 'Kiwi for G Suite.pkg'

  uninstall pkgutil: 'com.zive.kiwi.qb-pkg.gsuite',
            delete:  '/Applications/Kiwi for G Suite.app'
end
