cask 'lyn' do
  version '1.9.7.1'
  sha256 '42e44b3eb21746b69e2d402d02f9f3b068710ae64fd5cd83a1b81dc253f6dadd'

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
