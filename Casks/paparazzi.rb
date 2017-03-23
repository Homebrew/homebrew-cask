cask 'paparazzi' do
  version '1.0b3'
  sha256 '62e7f8a2f64f91403b56732ce5ab7d0bb74e13ac9a88ec2c61395ecb4ff32673'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          checkpoint: '0334d834f5f9e180045c5b39963b5e8fa7479987644d97ca5ff2ccee535a8930'
  name 'Paparazzi!'
  homepage 'https://derailer.org/paparazzi/'

  app 'Paparazzi!.app'
end
