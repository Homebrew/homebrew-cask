cask 'playlist-assist' do
  version '1.2.3'
  sha256 '8dbc5557919c6b227d560cf5668dd5bc11a4254522d22d72da4816f9b5ffbb58'

  url "http://dougscripts.com/itunes/scrx/playlistassistv#{version.delete('.')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml',
          :sha256 => '28442470f6d3f8dd413dedef0888e051f594799a2861f83134d8ebe21f4a014f'
  name 'Playlist Assist'
  homepage 'http://dougscripts.com/apps/playlistassistapp.php'
  license :commercial

  app 'Playlist Assist.app'
end
