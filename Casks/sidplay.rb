cask 'sidplay' do
  version '4.2'
  sha256 '11d713325deeceadf0948c239ec353ee3b2346ca9cee47e2c7680113f34ba66e'

  # twinbirds.com/sidplay was verified as official when first introduced to the cask
  url "http://www.twinbirds.com/sidplay/SIDPLAY#{version.major}.zip"
  appcast 'http://www.sidmusic.org/sidplay/mac/sidplay_appcast.xml',
          checkpoint: '95157ceef255f8e5415809eda558627f05b668c57e28026c7dd640c582af292b'
  name 'SIDPLAY'
  homepage 'http://www.sidmusic.org/sidplay/mac/'

  depends_on macos: '>= :el_capitan'

  app 'SIDPLAY.app'
end
