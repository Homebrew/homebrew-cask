cask 'freeze' do
  version '3.6'
  sha256 'b29159553ad594e6ba2d7eb023b777b7552eab33ec775b7f68f6f4a6cc074a04'

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
