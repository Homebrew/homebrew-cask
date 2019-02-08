cask 'moneywiz' do
  version '3.3.3'
  sha256 '528963181f40e852fb564e1a01c271a6fdd2b17d250743807d706b7608561391'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  app "MoneyWiz #{version.major}.app"
end
