cask 'flightgear' do
  version '2020.1.2'
  sha256 'e8dee2cb5b1b2747a15fb06fbf90f8b71813b8da5c5e82d4f2777eea36c491e2'

  # sourceforge.net/flightgear/ was verified as official when first introduced to the cask
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
