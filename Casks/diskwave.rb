cask 'diskwave' do
  version '0.4'
  sha256 '976324e46e4ca4d54240de13cf2c6f0db9afdb703b0e6ef78e2b5b5d36d63e75'

  url "http://diskwave.barthe.ph/download/DiskWave_#{version}.dmg"
  appcast 'https://diskwave.barthe.ph/sparkle/appcast_64bit.php',
          checkpoint: '8bc850c307554a6250a90dee47a0249810d7773abc33f772cd4f1de06b5b75b8'
  name 'DiskWave'
  homepage 'https://diskwave.barthe.ph/'
  license :gratis

  app 'DiskWave.app'
end
