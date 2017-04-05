cask 'paparazzi' do
  version '1.0b4'
  sha256 'f1eaa066035b5b168e253d5ec1c0de02281c6ac8039d4fbccc81ebcde323c5de'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          checkpoint: 'a5cc985565c2c343f26232b64853850a45c22ae7875b2d618e70fa2fecc78fe5'
  name 'Paparazzi!'
  homepage 'https://derailer.org/paparazzi/'

  app 'Paparazzi!.app'
end
