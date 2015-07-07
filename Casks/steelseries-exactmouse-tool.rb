cask :v1 => 'steelseries-exactmouse-tool' do
  version :latest
  sha256 :no_check

  url 'http://downloads.steelseriescdn.com/drivers/tools/steelseries-exactmouse-tool.dmg'
  name 'SteelSeries ExactMouse Tool'
  name 'ExactMouse'
  homepage 'http://steelseries.com/support/downloads'
  license :gratis

  app 'SteelSeries ExactMouse Tool.app'
end
