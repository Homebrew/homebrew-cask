cask 'freeze' do
  version '3.11'
  sha256 '2eb95e0aa4a66b01c33b9693e2a3a41be0910e4d9be3dc513b97f66545cfd11a'

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
