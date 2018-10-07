cask 'lyn' do
  version '1.9.8'
  sha256 'bb8e8359b27fc549d2afd5567cf81daa2d90a06e87bd69c0f2ef51886e552e60'

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'https://www.lynapp.com/lyn/update.xml'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap trash: [
               '~/Library/Application Support/Lyn',
               '~/Library/Caches/com.lynapp.lyn',
               '~/Library/Preferences/com.lynapp.lyn.plist',
             ]
end
