cask 'flightgear' do
  version '2016.2.1'
  sha256 '86e0bdbe06a7e9660380060fc3e48f3e2d1ee5cf838af3573805db2560a5c720'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: '924d166598e1d9b00b8ea57fe8c05aceb389f1612ac22f08b68296dada6050ed'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'
end
