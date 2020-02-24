cask 'moneywiz' do
  version '3.7.2'
  sha256 '383a1f985f6c0e6b8c0fe56445ff161480700536f84bdf4d0b9aaa54570e39ce'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  depends_on macos: '>= :sierra'

  app "MoneyWiz #{version.major}.app"
end
