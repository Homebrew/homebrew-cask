cask 'impactor' do
  version '0.9.50'
  sha256 '0941a4baeee76a27d64b89ea7fd1f8fa05c595b1b18a3d318ab7b5efcd972cbc'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  appcast 'https://cydia.saurik.com/api/appcast/1'
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
