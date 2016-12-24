cask 'flightgear' do
  version '2016.4.3'
  sha256 '305fbcf2cdab59a4073c6cff70818c4685c55a20f135b48ee198f22f4bf373e9'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: 'f710d4fde29157f191348f278c5a192eaf5c91786e020aa3b3cc2fdeaf45e425'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'
end
