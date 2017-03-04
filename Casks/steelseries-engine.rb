cask 'steelseries-engine' do
  version '3.9.10'
  sha256 '465d1ca5ce62211f3a98aa0e603a0f3988a6d7dc081e6be702f2cdfb4db5a547'

  # steelseriescdn.com was verified as official when first introduced to the cask
  url "https://downloads.steelseriescdn.com/drivers/engine/SteelSeriesEngine#{version}.pkg"
  name "SteelSeries Engine #{version.major}"
  homepage 'https://steelseries.com/engine'

  pkg "SteelSeriesEngine#{version}.pkg"

  uninstall pkgutil:   [
                         'com.steelseries.SSENext',
                         'com.steelseries.ssenext.driver',
                         'com.steelseries.ssenext.driver.signed',
                         'com.steelseries.ssenext.uninstaller',
                       ],
            launchctl: 'com.steelseries.SSENext',
            quit:      "com.steelseries.SteelSeries-Engine-#{version.major}",
            delete:    [
                         "/Applications/SteelSeries Engine #{version.major}",
                         '/Library/LaunchAgents/com.steelseries.SSENext.plist',
                       ]
end
