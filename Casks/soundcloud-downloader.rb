cask 'soundcloud-downloader' do
  version '2.7.2'
  sha256 '0272b1ebd6c6d28e4737ec08cb6ef560cc4c9f2b9d626806d4bef58fb37e278b'

  url "http://black-burn.ch/scd/downloads/#{version.no_dots}/in/b"
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          checkpoint: '18614c69ab696d1af1aeee1edf18c87ebc29aa81af2c33d1ab283e8f869aafb8'
  name 'SoundCloud Downloader'
  homepage 'https://black-burn.ch/scd/'

  app 'SoundCloud Downloader.app'
end
