cask 'soundcloud-downloader' do
  version '2.6.5'
  sha256 '9bdb97b69dc28fd656de1d8d3f9d7fea5557f435417af6a8abf5126863ee2abe'

  url "http://black-burn.ch/scd/downloads/#{version.no_dots}/in/b"
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          checkpoint: '0ec0399dd00efb723e161a4d0b26956a38d04e48cd7e7061ac29e1413546e430'
  name 'SoundCloud Downloader'
  homepage 'http://black-burn.ch/scd/'

  app 'SoundCloud Downloader.app'
end
