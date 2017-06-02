cask 'flightgear' do
  version '2017.2.1'
  sha256 '117fb9d18681e52007895c876ab9864aaf99f5b7a7899928bc7e365de4f1b6d7'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: 'f3173cad3e18b44b9297ef200ea4d1ea9e171818af279e6fb834f5131d879574'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/fgfs*',
                '~/Library/Application Support/FlightGear',
              ]
end
