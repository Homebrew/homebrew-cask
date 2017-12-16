cask 'paparazzi' do
  version '1.0b7'
  sha256 '1a61891c7ae8214c84b4b193f3a464c70d4c772e2d49af78a1ca74769078bbd2'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          checkpoint: 'e7b9cae1cb6d300785d1edba04954abafec7af0043792e74f2236e5d19cca494'
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
