cask 'moneywiz' do
  version '3.7.6'
  sha256 '5636ae8ae534ceb3dc6297b6a45bb7610cc8e4ac6dc9c36c050245671061dd6d'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  depends_on macos: '>= :sierra'

  app "MoneyWiz #{version.major}.app"
end
