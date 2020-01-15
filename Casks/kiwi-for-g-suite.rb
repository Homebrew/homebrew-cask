cask 'kiwi-for-g-suite' do
  version '2.0.31v'
  sha256 '4487ff4a386072a43d2e072a7e48e41604e90fd8d67729b22d43d4edcbb360bc'

  # kiwiforgsuite.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://kiwiforgsuite.s3.amazonaws.com/mac/release/Kiwi+for+G+Suite.pkg'
  appcast 'https://rink.hockeyapp.net/api/2/apps/0e823ae8232540248fd3980052c56495/'
  name 'Kiwi For G Suite'
  homepage 'https://www.kiwiforgmail.com/'

  pkg 'Kiwi for G Suite.pkg'

  uninstall pkgutil: 'com.zive.kiwi.qb-pkg.gsuite',
            delete:  '/Applications/Kiwi for G Suite.app'
end
