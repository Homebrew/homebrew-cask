cask 'freeze' do
  version '3.7'
  sha256 '10bfd0e1a47ef13f10311a962d5aed7cee34ea1637884fa80bc9dc80dfb03b2a'

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
