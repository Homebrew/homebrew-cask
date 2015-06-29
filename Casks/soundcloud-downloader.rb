cask :v1 => 'soundcloud-downloader' do
  version '2.6.1'
  sha256 '88d228874f1fe8910159d92857ed63a6c16cefdfce4dac3da378bc3960fe7b51'

  url "http://black-burn.ch/scd/downloads/#{version.gsub('.','')}/ex/b"
  name 'SoundCloud Downloader'
  appcast 'http://black-burn.ch/applications/scd/updates.php?hwni=1',
          :sha256 => 'eb64aab11d5c3a1c0f9eed554cef2b6866f667f19c2592c30ced3e8dfb0523fa'
  homepage 'http://black-burn.ch/scd/'
  license :mit

  app 'SoundCloud Downloader.app'
end
