cask 'freeze' do
  version '3.12'
  sha256 '59bff1a92d65e2b34852c4660611b85a97f10772bc31ac753342fa80c0b9ded6'

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
