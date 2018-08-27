cask 'impactor' do
  version '0.9.45'
  sha256 '25a5418d8371fbf9d004c2a2e57f867bca7d0cf5f9ef2734678d101f724a3650'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
