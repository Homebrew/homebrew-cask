cask 'lyn' do
  version '1.9.4'
  sha256 '56851affe1888a42c0798cdd9b0c57b046cbc93df59c483dd41059b7aa716f4d'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '929e3fe5495aec1035f7cb317976297b57cf3d95e53afa7330b4f3d50525b2ee'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap trash: [
               '~/Library/Application Support/Lyn',
               '~/Library/Caches/com.lynapp.lyn',
               '~/Library/Preferences/com.lynapp.lyn.plist',
             ]
end
