cask 'impactor' do
  version '0.9.42'
  sha256 '367ee0dde296ee44c4d4474aeedd03000537c425429ac52eaf58aa35fc4c56eb'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1',
          checkpoint: '50b4d0401be38b412868f9cca690365c11f6e1497359b08cf773e336c7b4fa93'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
