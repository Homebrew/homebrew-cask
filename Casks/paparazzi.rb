cask 'paparazzi' do
  version '0.6.7'
  sha256 '111c94994176a7690512aa5303bff14761f308c720b527b541e39edd054777bd'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          :sha256 => 'e0cd74e2e76883eef04764ae96496c4efae967c6c1fc84c7812f7b114001ea22'
  name 'Paparazzi!'
  homepage 'https://derailer.org/paparazzi/'
  license :gpl

  app 'Paparazzi!.app'
end
