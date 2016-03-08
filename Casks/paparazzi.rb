cask 'paparazzi' do
  version '0.6.7'
  sha256 '111c94994176a7690512aa5303bff14761f308c720b527b541e39edd054777bd'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          checkpoint: '376d19a4674b030d0b824c7d482bc4ba6af5773df36bbd2578632b5787db6d54'
  name 'Paparazzi!'
  homepage 'https://derailer.org/paparazzi/'
  license :gpl

  app 'Paparazzi!.app'
end
