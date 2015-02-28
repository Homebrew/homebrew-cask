cask :v1 => 'steelseries-exactmouse' do
  version :latest
  sha256 :no_check

  url 'http://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg'
  name 'SteelSeries ExactMouse'
  name 'ExactMouse'
  homepage 'http://steelseries.com/support/downloads'
  license :gratis

  app 'SteelSeries ExactMouse Tool.app'
end
