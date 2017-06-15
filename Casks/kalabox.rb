cask 'kalabox' do
  version '2.1.3'
  sha256 'fd02aa0fb6459270f050d2f7708aca2edb4ebb49f88fa9083f3db2fb44963c54'

  # github.com/kalabox/kalabox was verified as official when first introduced to the cask
  url "https://github.com/kalabox/kalabox/releases/download/v#{version}/kalabox-v#{version}.dmg"
  name 'Kalabox'
  homepage 'http://kalabox.io/'

  pkg 'KalaboxInstaller.pkg'

  uninstall pkgutil: 'io.kalabox.pkg.kalabox'
end
