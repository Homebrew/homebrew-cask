cask :v1 => 'soundcloud-downloader' do
  version '2.6.3'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  url "http://black-burn.ch/scd/downloads/#{version.delete('.')}/ex/b"
  name 'SoundCloud Downloader'
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          :sha256 => '8b53694a85cec36bd12199a24d8efa7495029a9621fa74e28c29803293f5b1df'
  homepage 'http://black-burn.ch/scd/'
  license :mit

  app 'SoundCloud Downloader.app'
end
