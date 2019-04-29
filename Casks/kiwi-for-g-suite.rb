cask 'kiwi-for-g-suite' do
  version '2.0.18v'
  sha256 'e7f87a89902b009504b311d07ede20b7613d16acb4d39d4772e229e0d3a41cf0'

  # s3.amazonaws.com/kiwiforgsuite was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/kiwiforgsuite/mac/release/Kiwi+for+G+Suite.pkg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0e823ae8232540248fd3980052c56495/'
  name 'Kiwi For G Suite'
  homepage 'https://www.kiwiforgmail.com/'

  pkg 'Kiwi for G Suite.pkg'

  uninstall pkgutil: 'com.zive.kiwi.qb-pkg.gsuite',
            delete:  '/Applications/Kiwi for G Suite.app'
end
