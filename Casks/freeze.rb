cask 'freeze' do
  version '3.12.1'
  sha256 '815d667f6dcc5b0fabc657a40afe2fe194ce8411a8f5ca22c68b5547afff4998'

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
