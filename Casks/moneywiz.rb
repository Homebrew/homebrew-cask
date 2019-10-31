cask 'moneywiz' do
  version '3.6.3'
  sha256 'fd900b217f72db4a7aea2c431dd6d08a34e8e65f9e3ef68bf31037766065a1cb'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  app "MoneyWiz #{version.major}.app"
end
