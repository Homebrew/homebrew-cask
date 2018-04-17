cask 'lyn' do
  version '1.9.6'
  sha256 '5aea9c04665615c0210687430d119108200fe379408f32d99a3f8d51d69986c7'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '089676cf97a198875ddb6c413c5ed80e761c3b946ccc46b0a13b5585b65d1bbb'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap trash: [
               '~/Library/Application Support/Lyn',
               '~/Library/Caches/com.lynapp.lyn',
               '~/Library/Preferences/com.lynapp.lyn.plist',
             ]
end
