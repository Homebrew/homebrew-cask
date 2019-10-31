cask 'moneywiz' do
  version '3.6.3'
  sha256 'aa14975c3b8f689edabbecaf3a2c7af34c186897db63a5dcb4d76d1deae64c12'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  app "MoneyWiz #{version.major}.app"
end
