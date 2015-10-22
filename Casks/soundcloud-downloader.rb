cask :v1 => 'soundcloud-downloader' do
  version '2.6.4'
  sha256 'eabb5f3f7ef0db45a804a720069fa98160ff51ca6ec6e0184423f1f4ef98e0af'

  url "http://black-burn.ch/scd/downloads/#{version.delete('.')}/in/b"
  name 'SoundCloud Downloader'
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          :sha256 => '3aec7755cdc3208b781ce41613d60f8e574f6c34e3fd819826e6734dd7aac70d'
  homepage 'http://black-burn.ch/scd/'
  license :mit

  app 'SoundCloud Downloader.app'
end
