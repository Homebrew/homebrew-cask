cask 'diskwave' do
  version '0.4'
  sha256 '976324e46e4ca4d54240de13cf2c6f0db9afdb703b0e6ef78e2b5b5d36d63e75'

  url "https://diskwave.barthe.ph/download/DiskWave_#{version}.dmg"
  appcast 'https://diskwave.barthe.ph/sparkle/appcast_64bit.php'
  name 'DiskWave'
  homepage 'https://diskwave.barthe.ph/'

  app 'DiskWave.app'
end
