cask 'playlist-assist' do
  version '1.3.0'
  sha256 'b572ccdafeab38a9a97a2e486ee61365a12943e691421176032a2fefb9501ad5'

  url "https://dougscripts.com/itunes/scrx/playlistassistv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml',
          checkpoint: '39792cfd11bdb7cd356c9bf7b7990803bab97a47fa82ebfddd64e4d256e739bc'
  name 'Playlist Assist'
  homepage 'https://dougscripts.com/apps/playlistassistapp.php'

  app 'Playlist Assist.app'
end
