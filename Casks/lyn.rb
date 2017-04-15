cask 'lyn' do
  version '1.8.8'
  sha256 'fe1226677960099714c62bdcd1468f1f03d28f296c5a071e903c6364a235f174'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '3fe222bdf415ea4831bf036886bc2c64c9e7f1d29350d88ed7285bd14284d282'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap delete: [
                '~/Library/Application Support/Lyn',
                '~/Library/Caches/com.lynapp.lyn',
                '~/Library/Preferences/com.lynapp.lyn.plist',
              ]
end
