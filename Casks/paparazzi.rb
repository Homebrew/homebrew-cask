cask 'paparazzi' do
  version '0.6.7'
  sha256 '111c94994176a7690512aa5303bff14761f308c720b527b541e39edd054777bd'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          :sha256 => 'a271444a2384c2fe5c7ef80c7b5f1f5a08826666550fd872f913c156b7c583e7'
  name 'Paparazzi!'
  homepage 'https://derailer.org/paparazzi/'
  license :gpl

  app 'Paparazzi!.app'
end
