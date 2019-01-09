cask 'playlist-assist' do
  version '1.3.1'
  sha256 '2b7774114a4fb7654298997abda9ea3db224b0a8788737a8741c56d48a714ab9'

  url "https://dougscripts.com/itunes/scrx/playlistassistv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml'
  name 'Playlist Assist'
  homepage 'https://dougscripts.com/apps/playlistassistapp.php'

  app 'Playlist Assist.app'
end
