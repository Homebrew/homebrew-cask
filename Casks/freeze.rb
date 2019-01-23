cask 'freeze' do
  version '3.9'
  sha256 '16a2d2e9dfb3d339162fbffef26a8fd2457a8eb8a9140b14abbb2b89bd992450'

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
