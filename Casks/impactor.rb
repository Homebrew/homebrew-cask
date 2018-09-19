cask 'impactor' do
  version '0.9.46'
  sha256 '8336a5f7427073f5c364d02cac046f67e1169ca3639f09ce68cf91adaca3196f'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
