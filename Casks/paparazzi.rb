cask 'paparazzi' do
  version '1.0b9'
  sha256 'aab7864070b755c59a8883f9cdfe6a6e9595ef14c8d6da1c99992a3dfe048480'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/'
  name 'Paparazzi!'
  homepage 'https://derailer.org/paparazzi/'

  app 'Paparazzi!.app'

  zap trash: [
               '~/Library/Application Support/Paparazzi!',
               '~/Library/Caches/org.derailer.Paparazzi',
               '~/Library/Cookies/org.derailer.Paparazzi.binarycookies',
               '~/Library/Preferences/org.derailer.Paparazzi.plist',
               '~/Library/Saved Application State/org.derailer.Paparazzi.savedState',
             ]
end
