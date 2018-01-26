cask 'paparazzi' do
  version '1.0b8'
  sha256 '2abe968b1b7d96b9faeeeee3cae7e17dd892c9619eaf9a312a2e3b26d6c9cf1e'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          checkpoint: 'e82fbce2d463f80b46dec1f37af447700ca51b20b3482f944a9fff3a48197009'
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
