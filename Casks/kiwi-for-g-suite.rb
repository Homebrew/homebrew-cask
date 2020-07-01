cask 'kiwi-for-g-suite' do
  version '2.0.35v'
  sha256 '7ee568b3651dc6a71830d379a6c69c9548083581528a7553984e0bade3b7243a'

  # kiwiforgsuite.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://kiwiforgsuite.s3.amazonaws.com/mac/release/Kiwi+for+G+Suite.pkg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0e823ae8232540248fd3980052c56495/'
  name 'Kiwi For G Suite'
  homepage 'https://www.kiwiforgmail.com/'

  pkg 'Kiwi for G Suite.pkg'

  uninstall pkgutil: 'com.zive.kiwi.qb-pkg.gsuite',
            delete:  '/Applications/Kiwi for G Suite.app'
end
