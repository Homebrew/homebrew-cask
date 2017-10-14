cask 'flightgear' do
  version '2017.3.1'
  sha256 '902100088b1f572be919660779160414c6eaa6b3cf196fcff9f416fa8f017f13'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: 'a89692e0882503af216e22ea381e20ce4ef7bfdd78fb3ee4f8b360ed634f4950'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/fgfs*',
                '~/Library/Application Support/FlightGear',
              ]
end
