cask 'freeze' do
  version '3.4'
  sha256 'bf19cfcd7138f754eef5076346f08e514b8f55816112e536aa2acf3111667586'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: '1818f1864e0239df8fc1f772641ee2203de45369bbd7307b2e0d86f06b4869eb'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'

  zap trash: [
               '~/Library/Application Scripts/seb.GlacierMac',
               '~/Library/Containers/seb.GlacierMac',
             ]
end
