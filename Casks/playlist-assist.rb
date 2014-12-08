cask :v1 => 'playlist-assist' do
  version '1.2.1'
  sha256 '70ef4c3cf78d39f8b1750ca44b6db42c3e72e24968ebd203fc146b2c189d5346'

  url "http://dougscripts.com/itunes/scrx/playlistassistv#{version.gsub(/\.\d\.\d$/, '')}.zip"
  homepage 'http://dougscripts.com/apps/playlistassistapp.php'
  license :commercial

  app 'Playlist Assist.app'
end
