cask 'fanny' do
  version '2.1.0'
  sha256 '47dfce25ea354eae980c7986034c1a02ef820a79125f2eee9addeeb9578447f7'

  url 'https://fannywidget.com/FannyWidget.zip'
  appcast 'https://github.com/DanielStormApps/Fanny/releases.atom'
  name 'FannyWidget'
  homepage 'https://fannywidget.com/'

  depends_on macos: '>= :high_sierra'

  app "FannyWidget-v#{version}/Fanny.app"
end
