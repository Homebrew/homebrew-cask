cask 'brewtarget' do
  version '2.3.0'
  sha256 'f1b3b33029f7d7cd873a1cdbf0741da22085f53dcefa2943dcfa8d35eda89fdd'

  # launchpad.net/brewtarget was verified as official when first introduced to the cask
  url "https://launchpad.net/brewtarget/trunk/#{version}/+download/Brewtarget-#{version}.dmg"
  appcast 'https://github.com/Brewtarget/brewtarget/releases.atom',
          checkpoint: 'fc9391fbd448175fc7c673a19b3d66220e78dbaf5fe69a2c487efa48f8bb2a44'
  name 'brewtarget'
  homepage 'http://www.brewtarget.org/'

  app 'brewtarget.app'
end
