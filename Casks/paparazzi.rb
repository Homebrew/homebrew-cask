cask 'paparazzi' do
  version '1.0b2'
  sha256 '487c60fbdf59a5047ccf0e5eaa2e0f2de8c8fa5e6cfd361f5045efc2f51cdee8'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          checkpoint: '82304298dd408bd147c4d00840a8ec16357d2d14383506e86df9aa72c4c323dc'
  name 'Paparazzi!'
  homepage 'https://derailer.org/paparazzi/'

  app 'Paparazzi!.app'
end
