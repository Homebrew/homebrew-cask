cask 'fanny' do
  version '2.0.0'
  sha256 'e8dbd45c85528ca3e2ad8bde63a396c74d0c075956310b0ba4d3ae3e8ad5629d'

  url 'https://fannywidget.com/FannyWidget.zip'
  appcast 'https://github.com/DanielStormApps/Fanny/releases.atom'
  name 'FannyWidget'
  homepage 'https://fannywidget.com/'

  depends_on macos: '>= :sierra'

  app "FannyWidget/Fanny.app"
end
