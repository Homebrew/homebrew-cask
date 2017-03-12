cask 'impactor' do
  version '0.9.39'
  sha256 'b503e66dcb3cd27dfa3ad6162d666408dd6450d315fd6425b0f4fc74f10af378'

  # cache.saurik.com/impactor was verified as official when first introduced to the cask
  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg"
  name 'Impactor'
  homepage 'http://www.cydiaimpactor.com/'

  app 'Impactor.app'
end
