cask 'moneywiz' do
  version '3.7.8'
  sha256 '5efeebb2c88a16c3d6542b01e896c19c42a82ce701d9ad28c51fffee1c444e3d'

  url 'https://mac.wiz.money/MoneyWiz_Mac_Free.dmg'
  appcast 'https://macdistribution.wiz.money/version_info_free.xml'
  name 'MoneyWiz'
  homepage 'https://wiz.money/'

  depends_on macos: '>= :sierra'

  app "MoneyWiz #{version.major}.app"
end
