cask 'freeze' do
  version '3.10'
  sha256 '93cd9782c9fd70a0277324b45d4b2237a8f43e320a55c617e4d8a4a3e1605bb4'

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
