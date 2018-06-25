cask 'impactor' do
  version '0.9.44'
  sha256 '119f45f4e082304589aa0891aa0613c977059194539c69974ace0ad91444ca48'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
