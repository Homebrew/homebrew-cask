cask 'flightgear' do
  version '2016.2.1'
  sha256 '86e0bdbe06a7e9660380060fc3e48f3e2d1ee5cf838af3573805db2560a5c720'

  # sourceforge.net/sourceforge/flightgear was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/flightgear/FlightGear-#{version}.dmg"
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'
  license :gpl

  app 'FlightGear.app'
end
