cask 'flightgear' do
  version '2018.1.1'
  sha256 '473d4c54be9342861433189a87e2de9892f3d273a90969458427e2923052ce00'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: '1f0c965acda11e42fa01a17c153da182e64312291844492e6e75d319164ba806'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/fgfs*',
               '~/Library/Application Support/FlightGear',
             ]
end
