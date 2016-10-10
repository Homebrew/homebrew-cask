cask 'impactor' do
  version '0.9.33'
  sha256 '2f5e9278896b1a5d8c524dc24ff24b893cddb9d082951e17c4655c8327ba7c2d'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
