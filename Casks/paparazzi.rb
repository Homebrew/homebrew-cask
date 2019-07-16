cask 'paparazzi' do
  version '1.0b10'
  sha256 'c142d516009318c861ee6a2bdcba6a559bbc022c327e8d7b24c1ecb83e070071'

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
