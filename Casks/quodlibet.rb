cask 'quodlibet' do
  version '3.9.0'
  sha256 '82b24c2cf41ea18df2b8c7a7823331ea84ce076a2a9c3d0eea8c6b263d2905a7'

  # bitbucket.org/lazka/quodlibet was verified as official when first introduced to the cask
  url "https://bitbucket.org/lazka/quodlibet/downloads/QuodLibet-#{version}.dmg"
  appcast 'https://github.com/quodlibet/quodlibet/releases.atom',
          checkpoint: '1cb6bed33dc0a4c621a01ac5d6148a59ef525c3d9c5449c2a760c22f45ab3a7d'
  name 'Quod Libet'
  homepage 'https://quodlibet.readthedocs.io/'

  app 'QuodLibet.app'

  zap trash: '~/.quodlibet'
end
