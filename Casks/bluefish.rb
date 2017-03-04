cask 'bluefish' do
  version '2.2.8'
  sha256 '46e6202adc39d4759380ab603174f3549a9620e735c816c61392ac2900350f4e'

  # bennewitz.com was verified as official when first introduced to the cask
  url "https://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg"
  appcast 'http://www.bennewitz.com/bluefish/stable/binaries/macosx/',
          checkpoint: 'f58657eee498c7cf605ac73859ca02994ccc8712491164561a0092c5ce9f0e58'
  name 'Bluefish'
  homepage 'http://bluefish.openoffice.nl/index.html'

  app 'Bluefish.app'
end
