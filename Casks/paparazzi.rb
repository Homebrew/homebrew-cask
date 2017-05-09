cask 'paparazzi' do
  version '1.0b5'
  sha256 'f65571f660e100ac9531fab9edef6413e1f23a5a952e6f2553380cecc3fc0b7b'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          checkpoint: '1673362065a3a18036832bdc850b40b24b44bfb1188739b134f9dcabf48c6fa1'
  name 'Paparazzi!'
  homepage 'https://derailer.org/paparazzi/'

  app 'Paparazzi!.app'

  zap delete: [
                '~/Library/Application Support/Paparazzi!',
                '~/Library/Caches/org.derailer.Paparazzi',
                '~/Library/Cookies/org.derailer.Paparazzi.binarycookies',
                '~/Library/Preferences/org.derailer.Paparazzi.plist',
                '~/Library/Saved Application State/org.derailer.Paparazzi.savedState',
              ]
end
