cask 'glcplayer' do
  version '2.3.0'
  sha256 '490d1971f56b5a20f915e01ce9f993b4441e99ea7f12e1107340062de14dc221'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/glc-player/glc_player_#{version}.dmg"
  name 'GLC_Player'
  homepage 'http://www.glc-player.net'
  license :oss

  app 'glc_player.app'
end
