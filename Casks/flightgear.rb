cask 'flightgear' do
  version '2018.2.2'
  sha256 '9028e0ac60d145f5ca5fce5afe7ef86f9eecae60cead34d21d2fbbeaa3030fe2'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/fgfs*',
               '~/Library/Application Support/FlightGear',
             ]
end
