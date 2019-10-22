cask 'freeze' do
  version '3.11.1'
  sha256 '0fd43f3742451b3b1e537a8498be8203b1c3baf1b5ea439ba3e0105e3b370a5e'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'

  zap trash: [
               '~/Library/Application Scripts/seb.GlacierMac',
               '~/Library/Containers/seb.GlacierMac',
             ]
end
