cask 'playlist-assist' do
  version '1.2.3'
  sha256 '8dbc5557919c6b227d560cf5668dd5bc11a4254522d22d72da4816f9b5ffbb58'

  url "http://dougscripts.com/itunes/scrx/playlistassistv#{version.delete('.')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml',
          :sha256 => 'd9d3250922561c189de4c3746ba5d36c9f2b03590e7787ff5155128d9b6e5151'
  name 'Playlist Assist'
  homepage 'http://dougscripts.com/apps/playlistassistapp.php'
  license :commercial

  app 'Playlist Assist.app'
end
