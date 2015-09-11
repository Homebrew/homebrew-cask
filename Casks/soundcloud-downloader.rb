cask :v1 => 'soundcloud-downloader' do
  version '2.6.2'
  sha256 'a68b69c3c1e523a1f93f8f9d774f8fa071e33cd0bbebdaaf7972103a58832005'

  url "http://black-burn.ch/scd/downloads/#{version.delete('.')}/ex/b"
  name 'SoundCloud Downloader'
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          :sha256 => '3aec7755cdc3208b781ce41613d60f8e574f6c34e3fd819826e6734dd7aac70d'
  homepage 'http://black-burn.ch/scd/'
  license :mit

  app 'SoundCloud Downloader.app'
end
