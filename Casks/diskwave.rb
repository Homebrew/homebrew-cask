cask 'diskwave' do
  version '0.4'
  sha256 '976324e46e4ca4d54240de13cf2c6f0db9afdb703b0e6ef78e2b5b5d36d63e75'

  url "http://diskwave.barthe.ph/download/DiskWave_#{version}.dmg"
  appcast 'http://diskwave.barthe.ph/sparkle/appcast_64bit.php',
          :sha256 => 'e15fa8d673bc5f0a991d0bf4eddd196fa9d766e82e132bebe2f54f26b7a9a886'
  name 'DiskWave'
  homepage 'http://diskwave.barthe.ph/'
  license :gratis

  app 'DiskWave.app'
end
