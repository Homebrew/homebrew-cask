cask 'impactor' do
  version '0.9.47'
  sha256 'a0176201bf44360aaee1407c1b7ca51d667bf98bd7442af7d4084e048f8d2006'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
