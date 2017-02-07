cask 'sidplay' do
  version '4.2'
  sha256 '883aed3cbe682613e0e0357a88bece775e30cf6793d81d9fb8d9fd2549721663'

  # twinbirds.com/sidplay was verified as official when first introduced to the cask
  url "http://www.twinbirds.com/sidplay/SIDPLAY#{version.major}.zip"
  appcast 'http://www.sidmusic.org/sidplay/mac/sidplay_appcast.xml',
          checkpoint: 'dcdf4de0dd4e7bdbebda68c26e156b57f4199f23d89176ca9bc3159377d4ac58'
  name 'SIDPLAY'
  homepage 'http://www.sidmusic.org/sidplay/mac/'

  depends_on macos: '>= :el_capitan'

  app 'SIDPLAY.app'
end
