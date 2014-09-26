class Paparazzi < Cask
  version '0.6.7'
  sha256 '111c94994176a7690512aa5303bff14761f308c720b527b541e39edd054777bd'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/'
  homepage 'http://derailer.org/paparazzi/'

  app 'Paparazzi!.app'
end
