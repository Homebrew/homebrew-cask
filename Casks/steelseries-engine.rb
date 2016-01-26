cask 'steelseries-engine' do
  version '3.6.4'
  sha256 'f8ea15119259a8280787f747792c3964ce711fe2dbdbe884dabcdfdd68f1d4d2'

  url "http://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
  name 'SteelSeries Engine 3'
  homepage 'https://steelseries.com/engine'
  license :gratis

  pkg "SteelSeriesEngine#{version}.pkg"

  uninstall pkgutil:   [
                         'com.steelseries.SSENext',
                         'com.steelseries.ssenext.driver',
                         'com.steelseries.ssenext.driver.signed',
                         'com.steelseries.ssenext.uninstaller',
                       ],
            launchctl: 'com.steelseries.SSENext',
            quit:      'com.steelseries.SteelSeries-Engine-3',
            delete:    [
                         '/Applications/SteelSeries Engine 3',
                         '/Library/LaunchAgents/com.steelseries.SSENext.plist',
                       ]
end
