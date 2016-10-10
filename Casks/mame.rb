cask 'mame' do
  version '0.135'
  sha256 'fce1a45e53e0f6bc2ef20e5b6fc84bd48806f1bc2a38acec57fd9fafe7e2af7e'

  url "https://downloads.sourceforge.net/mameosx/MAMEOSX-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mameosx/rss',
          checkpoint: '05d87458543be825903620c590fc797a842cdcd8f91cab8b88623ecc701992b7'
  name 'MAME'
  homepage 'http://mameosx.sourceforge.net/'

  app 'MAME OS X.app'
end
