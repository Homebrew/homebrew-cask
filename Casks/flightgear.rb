cask 'flightgear' do
  version '2017.1.2'
  sha256 'bd6270404515914c882f8a9c3be9073339d1dd998b7f88220ed15b9fe7d77dea'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: '4a83731f1a473aa983bc3c40b820cc212c5d2429eb39be63e391d57909790daf'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/fgfs*',
                '~/Library/Application Support/FlightGear',
              ]
end
