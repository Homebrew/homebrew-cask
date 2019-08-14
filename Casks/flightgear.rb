cask 'flightgear' do
  version '2019.1.1'
  sha256 'ffff81f9b88a9f96c6563e9bc6d43b6f4f84bcf001cd5d0fa144b4bd0cdca823'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss'
  name 'FlightGear'
  homepage 'https://www.flightgear.org/'

  app 'FlightGear.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/fgfs*',
               '~/Library/Application Support/FlightGear',
             ]
end
