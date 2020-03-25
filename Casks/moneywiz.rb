cask 'moneywiz' do
  version '3.7.4'
  sha256 '9b8d6d064528e59045d3c5b0d740fc3a4e4628c55cf2db1112ba95e6cbb50377'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  depends_on macos: '>= :sierra'

  app "MoneyWiz #{version.major}.app"
end
