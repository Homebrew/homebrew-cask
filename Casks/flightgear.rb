cask 'flightgear' do
  version '2018.2.1'
  sha256 'e2e82e0c2ae157f1dcab0667c2e2878826756c2b723c3039ece7823807244886'

  # sourceforge.net/flightgear was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/flightgear/FlightGear-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/flightgear/rss',
          checkpoint: 'b3a6b7ba0dab123611a7294fbce85c847446fea7ad5ba9813085fd279dbd3f0b'
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'

  app 'FlightGear.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/fgfs*',
               '~/Library/Application Support/FlightGear',
             ]
end
