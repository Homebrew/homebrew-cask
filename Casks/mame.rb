cask :v1 => 'mame' do
  version '0.135'
  sha256 'fce1a45e53e0f6bc2ef20e5b6fc84bd48806f1bc2a38acec57fd9fafe7e2af7e'

  url "https://downloads.sourceforge.net/mameosx/MAMEOSX-#{version}.dmg"
  homepage 'http://mameosx.sourceforge.net/'
  license :oss

  app 'MAME OS X.app'
end
