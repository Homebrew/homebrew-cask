cask 'glcplayer' do
  version '2.3.0'
  sha256 '490d1971f56b5a20f915e01ce9f993b4441e99ea7f12e1107340062de14dc221'

  # sourceforge.net/glc-player was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/glc-player/glc_player_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/glc-player/rss',
          checkpoint: 'c22cc9ffe9a5e1b6d7ac434654d279c8f8abb9ef04b5ef9119de231550d0d300'
  name 'GLC_Player'
  homepage 'http://www.glc-player.net/'

  app 'glc_player.app'
end
