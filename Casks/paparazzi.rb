cask 'paparazzi' do
  version '1.0b11'
  sha256 '368c7f897af2d9e96124533873681c42c44488b66c98680ef597ebc2c7075fd7'

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
