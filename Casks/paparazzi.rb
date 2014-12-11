cask :v1 => 'paparazzi' do
  version '0.6.7'
  sha256 '111c94994176a7690512aa5303bff14761f308c720b527b541e39edd054777bd'

  url "https://derailer.org/paparazzi/Paparazzi!%20#{version}.dmg"
  appcast 'https://derailer.org/paparazzi/appcast/',
          :sha256 => '05c4173db7a34788c01999a5c20d5d9dcede3d4cf981cc2268fc24c195b38efe'
  homepage 'http://derailer.org/paparazzi/'
  license :unknown    # todo: improve this machine-generated value

  app 'Paparazzi!.app'
end
