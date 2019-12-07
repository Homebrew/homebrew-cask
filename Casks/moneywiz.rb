cask 'moneywiz' do
  version '3.6.3'
  sha256 'c852c610d73f4690273ada87c611ac517fb685fab3497f7065e1de6344a16b87'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  depends_on macos: '>= :sierra'

  app "MoneyWiz #{version.major}.app"
end
