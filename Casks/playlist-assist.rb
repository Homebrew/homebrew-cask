cask 'playlist-assist' do
  version '1.2.4'
  sha256 '85606254173bddf0c282affa24c9db3bce8c15d754a1d9ba3912932878260958'

  url "http://dougscripts.com/itunes/scrx/playlistassistv#{version.delete('.')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml',
          checkpoint: '7324b771b62991def6574252bab947e3df630beae5351b7365ad8c9046f6fe29'
  name 'Playlist Assist'
  homepage 'http://dougscripts.com/apps/playlistassistapp.php'
  license :commercial

  app 'Playlist Assist.app'
end
