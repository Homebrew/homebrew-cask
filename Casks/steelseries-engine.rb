cask :v1 => 'steelseries-engine' do
  version '3.4.3'
  sha256 'b7723aca601080fb734651a7f898ab31dd51ca29f03edb7362f79c90a14909c6'

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
