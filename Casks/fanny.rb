cask 'fanny' do
  version '2.2.0'
  sha256 '5fac18409b5f3054446b3d09e93a56658686ebff670bb70afcd1121d3ca6e369'

  url 'https://fannywidget.com/FannyWidget.zip'
  appcast 'https://github.com/DanielStormApps/Fanny/releases.atom'
  name 'FannyWidget'
  homepage 'https://fannywidget.com/'

  depends_on macos: '>= :high_sierra'

  app "FannyWidget-v#{version}/Fanny.app"
end
