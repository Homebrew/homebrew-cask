cask 'moneywiz' do
  version '3.7.7'
  sha256 'f3ee9881fa4d8dd51a63a63796e474ca7af266081bb43e678311135590fbd90d'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  depends_on macos: '>= :sierra'

  app "MoneyWiz #{version.major}.app"
end
