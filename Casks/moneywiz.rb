cask 'moneywiz' do
  version '3.2.0'
  sha256 '3046e64d66b6e7a211c1e2e1548cef0c56c001a9ca69e9fcff9ae2516cbff324'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  app "MoneyWiz #{version.major}.app"
end
