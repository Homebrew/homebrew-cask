cask 'namecoin' do
  version '0.3.80-a00c33d'
  sha256 '5e2432e384b46615d34c00fbe2bcb0a9cbc4f1cc1a27cd72fbffceebcac7eb95'

  url "https://namecoin.info/files/Namecoin-Qt.app-#{version}.zip"
  name 'Namecoin'
  homepage 'https://namecoin.info/'

  app 'Namecoin-Qt.app'

  zap delete: [
                '~/Library/Application Support/Namecoin',
                '~/Library/Preferences/Namecoin-Qt.plist',
              ]
end
