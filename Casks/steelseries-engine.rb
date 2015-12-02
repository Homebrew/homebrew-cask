cask :v1 => 'steelseries-engine' do
  version '3.5.3'
  sha256 'ae25d45e7af3a1a2f3519ee1c74b9c1361e9bbcd3f2d78c915a69ae923d530e5'

  url "http://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
  name 'SteelSeries Engine 3'
  homepage 'https://steelseries.com/engine'
  license :gratis
  tags :vendor => 'SteelSeries'

  pkg "SteelSeriesEngine#{version}.pkg"

  uninstall :pkgutil => [
                         'com.steelseries.SSENext',
                         'com.steelseries.ssenext.driver',
                         'com.steelseries.ssenext.driver.signed',
                         'com.steelseries.ssenext.uninstaller'
                        ],
            :launchctl => 'com.steelseries.SSENext',
            :quit => 'com.steelseries.SteelSeries-Engine-3',
            :delete => [
                        '/Applications/SteelSeries Engine 3',
                        '/Library/LaunchAgents/com.steelseries.SSENext.plist'
                       ]
end
