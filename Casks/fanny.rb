cask 'fanny' do
  version '2.2.1'
  sha256 '0fc8c2bce6b80eeb766cfc2fdf503fcb6d1d16e5680a763d040c7059453aea8c'

  url 'https://fannywidget.com/FannyWidget.zip'
  appcast 'https://github.com/DanielStormApps/Fanny/releases.atom'
  name 'FannyWidget'
  homepage 'https://fannywidget.com/'

  depends_on macos: '>= :high_sierra'

  app "FannyWidget-v#{version}/Fanny.app"
end
