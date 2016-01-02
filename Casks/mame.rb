cask 'mame' do
  version '0.135'
  sha256 'fce1a45e53e0f6bc2ef20e5b6fc84bd48806f1bc2a38acec57fd9fafe7e2af7e'

  url "http://downloads.sourceforge.net/mameosx/MAMEOSX-#{version}.dmg"
  name 'MAME'
  homepage 'http://mameosx.sourceforge.net/'
  license :gratis

  app 'MAME OS X.app'
end
