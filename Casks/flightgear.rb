cask 'flightgear' do
  version '2017.1.3'
  sha256 '78ed634c5db8a3a28f7babf656d7190c0d5fea0013a3c0ff8e1ba45c0d3933af'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: 'cdd2c3e5595760f450f4c442b4be6ec1aca0870cf4fa356e1b9294af287021e8'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/fgfs*',
                '~/Library/Application Support/FlightGear',
              ]
end
