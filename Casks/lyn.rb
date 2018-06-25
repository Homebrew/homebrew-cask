cask 'lyn' do
  version '1.9.6'
  sha256 '5aea9c04665615c0210687430d119108200fe379408f32d99a3f8d51d69986c7'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap trash: [
               '~/Library/Application Support/Lyn',
               '~/Library/Caches/com.lynapp.lyn',
               '~/Library/Preferences/com.lynapp.lyn.plist',
             ]
end
