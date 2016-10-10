cask 'glcplayer' do
  version '2.3.0'
  sha256 '490d1971f56b5a20f915e01ce9f993b4441e99ea7f12e1107340062de14dc221'

  # sourceforge.net/glc-player was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/glc-player/glc_player_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/glc-player/rss',
          checkpoint: '39bad240808145d93ae00f0ec8009c69f74b5696dfb854967d7a0c7396161407'
  name 'GLC_Player'
  homepage 'http://www.glc-player.net'

  app 'glc_player.app'
end
