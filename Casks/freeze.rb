cask 'freeze' do
  version '3.2'
  sha256 '516d0da9a4640e0c7ba72f4adce89a4a2b5a53be59d5eb53f74a36ac443ba143'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: '2b09f9f521fec0eb0ee92ca6f268ee208585999c26152338640a14db4b67d6e9'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'

  zap trash: [
               '~/Library/Application Scripts/seb.GlacierMac',
               '~/Library/Containers/seb.GlacierMac',
             ]
end
