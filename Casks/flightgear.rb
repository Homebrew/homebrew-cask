cask 'flightgear' do
  version '2016.1.1'
  sha256 '223b8a50ff050e45b7039b6537a2ef62ea1f9efc78ce214b15d05be49c78a688'

  url "http://downloads.sourceforge.net/sourceforge/flightgear/FlightGear-#{version}.dmg"
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'
  license :gpl

  app 'FlightGear.app'
end
