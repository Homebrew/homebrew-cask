cask 'impactor' do
  version '0.9.48'
  sha256 '61e36266357d8e56af8909f4d605e2f00a14b37ae68f87d122e4e0b02fbbcaab'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
