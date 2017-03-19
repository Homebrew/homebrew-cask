cask 'quodlibet' do
  version '3.8.1'
  sha256 '6bc27b27be763f7c4fe48cfd62b7ccb0070474455a0b668ac36c8d3d844ab0b8'

  # bitbucket.org was verified as official when first introduced to the cask
  url 'https://bitbucket.org/lazka/quodlibet/downloads/QuodLibet-3.8.1.dmg'
  name 'Quod Libet'
  homepage 'http://quodlibet.readthedocs.io/'

  app 'QuodLibet.app'

  zap delete: '~/.quodlibet'
end
