cask 'moneywiz' do
  version '3.4.0'
  sha256 'e34c69fdc92899d550c2a1938368d7eb58f6fe582f8d50a8ddbf58e1526fcb3e'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  app "MoneyWiz #{version.major}.app"
end
