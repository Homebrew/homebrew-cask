cask 'playlist-assist' do
  version '1.2.3'
  sha256 '8dbc5557919c6b227d560cf5668dd5bc11a4254522d22d72da4816f9b5ffbb58'

  url "http://dougscripts.com/itunes/scrx/playlistassistv#{version.delete('.')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml',
          checkpoint: 'e9f93840c8cdd03e3d467931a6f73b6d3a00a125c1217452e332b1e8900ea264'
  name 'Playlist Assist'
  homepage 'http://dougscripts.com/apps/playlistassistapp.php'
  license :commercial

  app 'Playlist Assist.app'
end
