cask 'bluefish' do
  version '2.2.8'
  sha256 '46e6202adc39d4759380ab603174f3549a9620e735c816c61392ac2900350f4e'

  # bennewitz.com was verified as official when first introduced to the cask
  url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg"
  appcast 'http://www.bennewitz.com/bluefish/stable/binaries/macosx/',
          checkpoint: '72278d0e8f14cc4b157f1f672d76fe1c4e5c34ac9444e8f83959a8bf298dca20'
  name 'Bluefish'
  homepage 'http://bluefish.openoffice.nl/index.html'

  app 'Bluefish.app'
end
