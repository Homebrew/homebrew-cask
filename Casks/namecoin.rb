cask 'namecoin' do
  version '0.3.80-a00c33d'
  sha256 '5e2432e384b46615d34c00fbe2bcb0a9cbc4f1cc1a27cd72fbffceebcac7eb95'

  # namecoin.info was verified as official when first introduced to the cask
  url "https://namecoin.info/files/Namecoin-Qt.app-#{version}.zip"
  appcast 'https://github.com/namecoin/namecoin-legacy/releases.atom',
          checkpoint: '614319117db6bd3374b30549025052623c5182b9e88a9de81ed1140063648956'
  name 'Namecoin'
  homepage 'https://namecoin.org/'

  app 'Namecoin-Qt.app'

  zap delete: [
                '~/Library/Application Support/Namecoin',
                '~/Library/Preferences/Namecoin-Qt.plist',
              ]
end
