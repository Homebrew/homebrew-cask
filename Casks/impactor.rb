cask 'impactor' do
  version '0.9.41'
  sha256 '6c7fd51067320bdfd26b23977b04ec4de8e71bf125a928aef06f95173c0d1cbb'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
