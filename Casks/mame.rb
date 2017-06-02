cask 'mame' do
  version '0.135'
  sha256 'fce1a45e53e0f6bc2ef20e5b6fc84bd48806f1bc2a38acec57fd9fafe7e2af7e'

  url "https://downloads.sourceforge.net/mameosx/MAMEOSX-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mameosx/rss',
          checkpoint: '7b87a1945db16b735ad47fb39f552f8dfd5f3ff775a73819e5c309a1d17559b2'
  name 'MAME'
  homepage 'http://mameosx.sourceforge.net/'

  app 'MAME OS X.app'
end
