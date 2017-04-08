cask 'quodlibet' do
  version '3.8.1'
  sha256 '6bc27b27be763f7c4fe48cfd62b7ccb0070474455a0b668ac36c8d3d844ab0b8'

  # bitbucket.org/lazka/quodlibet was verified as official when first introduced to the cask
  url "https://bitbucket.org/lazka/quodlibet/downloads/QuodLibet-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom',
          checkpoint: '2c4aa5c46bf6b4ecb5a4321de3d63f015520f48ade3de3720a86a92a18143170'
  name 'Quod Libet'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'QuodLibet.app'

  zap delete: '~/.quodlibet'
end
