cask 'kalabox' do
  version '2.1.3'
  sha256 'fd02aa0fb6459270f050d2f7708aca2edb4ebb49f88fa9083f3db2fb44963c54'

  # github.com/kalabox/kalabox was verified as official when first introduced to the cask
  url "https://github.com/kalabox/kalabox/releases/download/v#{version}/kalabox-v#{version}.dmg"
  appcast 'https://github.com/kalabox/kalabox/releases.atom',
          checkpoint: '4bda20c55da5053fb855c44857f965496cd085e30f0dc937c405b0654799cefb'
  name 'Kalabox'
  homepage 'http://kalabox.io/'

  pkg 'KalaboxInstaller.pkg'

  uninstall pkgutil: 'io.kalabox.pkg.kalabox'
end
