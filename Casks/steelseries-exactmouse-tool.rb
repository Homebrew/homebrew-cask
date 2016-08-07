cask 'steelseries-exactmouse-tool' do
  version :latest
  sha256 :no_check

  # steelseriescdn.com was verified as official when first introduced to the cask
  url 'http://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg'
  name 'SteelSeries ExactMouse Tool'
  homepage 'https://steelseries.com/support/downloads'
  license :gratis

  app 'SteelSeries ExactMouse Tool.app'

  zap delete: '~/Preferences/com.SteelSeries.SteelSeries-ExactMouse-Tool.plist'
end
