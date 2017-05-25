cask 'exfalso' do
  version '3.9.0'
  sha256 '4da83c06cc6fa9961cb00c711220c17627107a6e27bc8b57459c3805a1f2c651'

  # bitbucket.org/lazka/quodlibet was verified as official when first introduced to the cask
  url "https://bitbucket.org/lazka/quodlibet/downloads/ExFalso-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom',
          checkpoint: '1cb6bed33dc0a4c621a01ac5d6148a59ef525c3d9c5449c2a760c22f45ab3a7d'
  name 'Ex Falso'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'ExFalso.app'

  zap delete: '~/.quodlibet'
end
