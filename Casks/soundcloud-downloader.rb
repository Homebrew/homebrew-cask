cask 'soundcloud-downloader' do
  version '2.6.7'
  sha256 '76501bdc629f06f2f548e30c76dda0ebc2b76d393a853bcef5e2d43a317641d6'

  url "http://black-burn.ch/scd/downloads/#{version.no_dots}/in/b"
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          checkpoint: 'a0bbcf012158e1dcd00e8e5baa6e122012d9e527e67e0d38fd0bde8ecc252222'
  name 'SoundCloud Downloader'
  homepage 'http://black-burn.ch/scd/'

  app 'SoundCloud Downloader.app'
end
