cask 'shortcat' do
  version '0.7.8'
  sha256 'e72cacfdd32db9b97d48e866a447bec4d18f6b4012159069c4de4b0b87e683b9'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml',
          checkpoint: '3bc007d7634d28348b2245d88902ae3d32992d74bd41cbd209e50a389f7a3c2a'
  name 'Sproutcube Shortcat'
  homepage 'https://shortcatapp.com/'

  accessibility_access true

  app 'Shortcat.app'

  zap trash: [
               '~/Library/Application Support/Shortcat',
               '~/Library/Cookies/com.sproutcube.Shortcat.binarycookies',
               '~/Library/Preferences/com.sproutcube.Shortcat.plist',
             ]
end
