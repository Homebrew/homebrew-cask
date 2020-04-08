cask 'moneywiz' do
  version '3.7.5'
  sha256 '46934ff9794a42b8c9d0f5797aa17ec0ee59845994ab4e843d95fd5c3cd6e6ae'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  depends_on macos: '>= :sierra'

  app "MoneyWiz #{version.major}.app"
end
