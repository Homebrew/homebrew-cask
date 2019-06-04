cask 'moneywiz' do
  version '3.5.1'
  sha256 '1d582dedeed611afaa5f52d7643939b65ed8e3439cd9e7f861dfe00ae6cec70d'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  app "MoneyWiz #{version.major}.app"
end
