cask 'playlist-assist' do
  version '1.3.0'
  sha256 'b572ccdafeab38a9a97a2e486ee61365a12943e691421176032a2fefb9501ad5'

  url "https://dougscripts.com/itunes/scrx/playlistassistv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml',
          checkpoint: 'a4687577efe197bc3a4cb0aad90e2a113121106d1a4ed233f6f58c021dbaae59'
  name 'Playlist Assist'
  homepage 'https://dougscripts.com/apps/playlistassistapp.php'

  app 'Playlist Assist.app'
end
