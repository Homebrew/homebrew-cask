cask :v1 => 'playlist-assist' do
  version '1.2.2'
  sha256 '6bcc953cabcee2e47497bb3b51cd76c3ee6dcb6ac5e4222740a5ec775f221e75'

  url "http://dougscripts.com/itunes/scrx/playlistassistv#{version.delete('.')}.zip"
  name 'Playlist Assist'
  appcast 'http://dougscripts.com/itunes/itinfo/playlistassist_appcast.xml',
          :sha256 => 'b9b4840b8437e81c9427aed67c17dce861dc4153cbac22a3a14f13058ab06d39'
  homepage 'http://dougscripts.com/apps/playlistassistapp.php'
  license :commercial

  app 'Playlist Assist.app'
end
