cask 'impactor' do
  version '0.9.52'
  sha256 '9db548074424473c5804d1118d27cd4f052db8b53b3e7c3261c1a903f521cbf1'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
