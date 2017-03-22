cask 'flightgear' do
  version '2016.4.4'
  sha256 '01a79d6d0125ca26a36a1b9307851ab16eb9aa04c833ba448020bb630400783e'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: '6e65fda2c7dc92cfb997b405dacdea555990cb409c51a2a7f013d30119a1713d'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'
end
