cask 'paparazzi' do
  version '1.0b6'
  sha256 'f5362e23ba840247a03dea426e3d3f4fdf9b3f832cf3cf4e27498564da7af0c9'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          checkpoint: 'ca001383f08caeaa53ecf37407f5ec589aecd2dc1a2cfd705bffbaf9416a3628'
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
