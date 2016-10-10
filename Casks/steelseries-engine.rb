cask 'steelseries-engine' do
  version '3.7.1'
  sha256 '0f50666e3a97c81f2c3b3825d1d7d8fa7ec0d458b12aee4968dd5442af648c0c'

  # steelseriescdn.com was verified as official when first introduced to the cask
  url "https://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
  name 'SteelSeries Engine 3'
  homepage 'https://steelseries.com/engine'

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
