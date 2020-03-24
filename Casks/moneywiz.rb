cask 'moneywiz' do
  version '3.7.3'
  sha256 '30711359bc46ade8af398ca9820a7963206b97574fc3846dd2d96d353c7bba26'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  depends_on macos: '>= :sierra'

  app "MoneyWiz #{version.major}.app"
end
