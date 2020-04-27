cask 'fanny' do
  version '2.2.2'
  sha256 '69e7babd08e6c13e09107bc94abde74c261632ade672bf328f4df8da99dea875'

  url 'https://fannywidget.com/FannyWidget.zip'
  appcast 'https://github.com/DanielStormApps/Fanny/releases.atom'
  name 'FannyWidget'
  homepage 'https://fannywidget.com/'

  depends_on macos: '>= :high_sierra'

  app "FannyWidget-v#{version}/Fanny.app"
end
