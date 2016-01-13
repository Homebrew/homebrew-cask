cask 'diskwave' do
  version '0.4'
  sha256 '976324e46e4ca4d54240de13cf2c6f0db9afdb703b0e6ef78e2b5b5d36d63e75'

  url "http://diskwave.barthe.ph/download/DiskWave_#{version}.dmg"
  appcast 'https://diskwave.barthe.ph/sparkle/appcast_64bit.php',
          :checkpoint => '5f3221b84e810313f4b121a370aa68e11185fd19a46bd7ae018d238caa59d968'
  name 'DiskWave'
  homepage 'https://diskwave.barthe.ph/'
  license :gratis

  app 'DiskWave.app'
end
