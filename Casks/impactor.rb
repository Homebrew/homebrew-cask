cask 'impactor' do
  version '0.9.41'
  sha256 '6c7fd51067320bdfd26b23977b04ec4de8e71bf125a928aef06f95173c0d1cbb'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1',
          checkpoint: 'ecdff740f3eaa97ca4f168302ebfb559f6d1a9cc58472cab4259ec765c06c004'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
