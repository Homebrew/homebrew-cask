cask 'soundcloud-downloader' do
  version '2.6.4'
  sha256 'eabb5f3f7ef0db45a804a720069fa98160ff51ca6ec6e0184423f1f4ef98e0af'

  url "http://black-burn.ch/scd/downloads/#{version.delete('.')}/in/b"
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          :sha256 => '5e5e504fd45e7ed4dfcdca80bc8ffa0d7b466b092bbafd8988d0d38884052d26'
  name 'SoundCloud Downloader'
  homepage 'http://black-burn.ch/scd/'
  license :mit

  app 'SoundCloud Downloader.app'
end
