cask 'soundcloud-downloader' do
  version '2.6.4'
  sha256 'eabb5f3f7ef0db45a804a720069fa98160ff51ca6ec6e0184423f1f4ef98e0af'

  url "http://black-burn.ch/scd/downloads/#{version.no_dots}/in/b"
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          checkpoint: '69e4f358b3c260581c3d4da1d3cfc0285ed6b804e635457365382ec4ab17d7d8'
  name 'SoundCloud Downloader'
  homepage 'http://black-burn.ch/scd/'

  app 'SoundCloud Downloader.app'
end
