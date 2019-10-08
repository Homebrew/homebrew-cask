cask 'fanny' do
  version '2.0.1'
  sha256 '2d5375ce7b7f0ee921ec171c894b49d753a17cc030d071aafd94b4ee114dc07a'

  url 'https://fannywidget.com/FannyWidget.zip'
  appcast 'https://github.com/DanielStormApps/Fanny/releases.atom'
  name 'FannyWidget'
  homepage 'https://fannywidget.com/'

  depends_on macos: '>= :high_sierra'

  app 'FannyWidget/Fanny.app'
end
