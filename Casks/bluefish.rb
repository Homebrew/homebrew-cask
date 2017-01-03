cask 'bluefish' do
  version '2.2.8'
  sha256 '46e6202adc39d4759380ab603174f3549a9620e735c816c61392ac2900350f4e'

  # bennewitz.com was verified as official when first introduced to the cask
  url "http://www.bennewitz.com/bluefish/stable/binaries/macosx/Bluefish-#{version}.dmg"
  name 'Bluefish'
  homepage 'http://bluefish.openoffice.nl/index.html'

  app 'Bluefish.app'
end
