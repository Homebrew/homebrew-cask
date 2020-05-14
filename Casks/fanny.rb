cask 'fanny' do
  version '2.3.0'
  sha256 'adcd59e6839934959dc7ebb367f2f94e1b1542b83977a5117a6f670d23d2e053'

  url 'https://fannywidget.com/FannyWidget.zip'
  appcast 'https://github.com/DanielStormApps/Fanny/releases.atom'
  name 'FannyWidget'
  homepage 'https://fannywidget.com/'

  depends_on macos: '>= :high_sierra'

  app "FannyWidget-v#{version}/Fanny.app"
end
