cask 'moneywiz' do
  version '3.5.3'
  sha256 '9e580c7abef0392cb24bba7f27a991ee616c401773b0cc93bfb696d76a5b5bf5'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  app "MoneyWiz #{version.major}.app"
end
