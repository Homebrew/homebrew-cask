cask 'flightgear' do
  version '2017.3.1'
  sha256 '902100088b1f572be919660779160414c6eaa6b3cf196fcff9f416fa8f017f13'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: '0647d44d57b299e8f68e2157d01befc45138b97470eda127b7e72309607a8584'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/fgfs*',
               '~/Library/Application Support/FlightGear',
             ]
end
