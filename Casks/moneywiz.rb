cask 'moneywiz' do
  version '3.3.4'
  sha256 '988e9da6e0a51975803c63c28669724326016b2879ccdcaeacaa5a36250e1009'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  app "MoneyWiz #{version.major}.app"
end
