cask 'moneywiz' do
  version '3.7.0'
  sha256 'd4d315032906078b4c741ef55181afa883d3cb148524da5bb0e3c02797529fcf'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  depends_on macos: '>= :sierra'

  app "MoneyWiz #{version.major}.app"
end
