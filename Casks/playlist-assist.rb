cask 'playlist-assist' do
  version '1.3.1'
  sha256 '2b7774114a4fb7654298997abda9ea3db224b0a8788737a8741c56d48a714ab9'

  url "https://dougscripts.com/itunes/scrx/playlistassistv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml',
          checkpoint: 'df1c9407d36e8baabed9577d8d941b2a5a665b39f1d4f8186af07565dd9444d4'
  name 'Playlist Assist'
  homepage 'https://dougscripts.com/apps/playlistassistapp.php'

  app 'Playlist Assist.app'
end
