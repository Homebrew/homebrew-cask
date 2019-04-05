cask 'impactor' do
  version '0.9.51'
  sha256 'd8944ebc2726aa5281ff88d8fd5daa3a4ad32bc2fd4f1cc9cb700f7239cacdbf'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
