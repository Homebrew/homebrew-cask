cask 'neat' do
  version '4.3.0.36'
  sha256 '4db396a5e9e6dbf1d03670830959fbba5753caeb77d279a60f6f251f376f3f1d'

  # neatco.com was verified as official when first introduced to the cask
  url "http://cdn.neatco.com/Neat-#{version}-Release.dmg"
  name 'Neat for Mac'
  homepage 'https://www.neat.com'

  pkg 'Install Neat.pkg'

  uninstall pkgutil: 'com.neat.pkg.NeatBall',
            quit:    'com.neatreceipts.nrm'
end
