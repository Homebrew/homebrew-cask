cask 'lyn' do
  version '1.9'
  sha256 'a7d7b453545f940201d55a11165b22deff0b5d15c19051f351ba16f9bd20896e'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: 'a225399645faae2a4160a36a5a597c56e2067254936df3f7a66a9bee6d83f162'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap delete: [
                '~/Library/Application Support/Lyn',
                '~/Library/Caches/com.lynapp.lyn',
                '~/Library/Preferences/com.lynapp.lyn.plist',
              ]
end
