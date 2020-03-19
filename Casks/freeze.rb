cask 'freeze' do
  version '3.12.1'
  sha256 '12ec213afe5fa0500978a3c454227035e2f53aaceeab1c3bc14ce718fc437103'

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
