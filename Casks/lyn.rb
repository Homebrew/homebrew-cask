cask 'lyn' do
  version '1.9.1'
  sha256 '5edefc06f70c114fb2caeb645f09601d8a3c490b555d9e6be93460c443f9bc31'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: 'aaf177d9709d170177d2b8d38a37137dd702fcdb9527b77905864340bbb73b17'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap delete: [
                '~/Library/Application Support/Lyn',
                '~/Library/Caches/com.lynapp.lyn',
                '~/Library/Preferences/com.lynapp.lyn.plist',
              ]
end
