cask 'soundcloud-downloader' do
  version '2.6.4'
  sha256 'eabb5f3f7ef0db45a804a720069fa98160ff51ca6ec6e0184423f1f4ef98e0af'

  url "http://black-burn.ch/scd/downloads/#{version.delete('.')}/in/b"
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          :sha256 => '69efb39511184a77b6cb9e240c70dad689dd57d5a8d26867af426eb0084e10ed'
  name 'SoundCloud Downloader'
  homepage 'http://black-burn.ch/scd/'
  license :mit

  app 'SoundCloud Downloader.app'
end
