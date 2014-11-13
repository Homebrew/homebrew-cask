cask :v1 => 'diskwave' do
  version '0.4.0'
  sha256 '976324e46e4ca4d54240de13cf2c6f0db9afdb703b0e6ef78e2b5b5d36d63e75'

  url "http://diskwave.barthe.ph/download/DiskWave_#{version.sub(%r{^(\d+\.\d+).*},'\1')}.dmg"
  appcast 'http://diskwave.barthe.ph/sparkle/appcast_64bit.php',
          :sha256 => '95aadfc8afdacc59b3760957a2ddbb81cf60bbb54cc7bf935c4421d2b52818b6'
  homepage 'http://diskwave.barthe.ph/'
  license :unknown

  app 'DiskWave.app'
end
