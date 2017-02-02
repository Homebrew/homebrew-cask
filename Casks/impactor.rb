cask 'impactor' do
  version '0.9.38'
  sha256 '94ec97eeb86c75b68d9bfb3a51156fccb3390ea1037c40ac4e49e26875346aff'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
