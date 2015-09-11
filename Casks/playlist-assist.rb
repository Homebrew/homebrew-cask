cask :v1 => 'playlist-assist' do
  version '1.2.1'
  sha256 '70ef4c3cf78d39f8b1750ca44b6db42c3e72e24968ebd203fc146b2c189d5346'

  url "http://dougscripts.com/itunes/scrx/playlistassistv#{version.to_i}.zip"
  name 'Playlist Assist'
  appcast 'http://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml',
          :sha256 => 'd4d8bda02c2420b837298134743ad00af55c8801dcb4fd1f62e461d17419526e'
  homepage 'http://dougscripts.com/apps/playlistassistapp.php'
  license :commercial

  app 'Playlist Assist.app'
end
