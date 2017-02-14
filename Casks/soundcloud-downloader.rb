cask 'soundcloud-downloader' do
  version '2.6.8'
  sha256 'eeb09d781956764e7c7ee949b18cb0de30848b4473deba3083279c5ed4e1ee67'

  url "http://black-burn.ch/scd/downloads/#{version.no_dots}/in/b"
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          checkpoint: 'cdc2148baf8a3d61472eaac288b66b3cb297005979800fe990a08e8e36f078b4'
  name 'SoundCloud Downloader'
  homepage 'http://black-burn.ch/scd/'

  app 'SoundCloud Downloader.app'
end
