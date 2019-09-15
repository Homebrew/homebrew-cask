cask 'moneymoney' do
  version '2.3.19'
  sha256 '20b6c68289ada14fcdcfef165b39678ea2542c9da17248afe75bd53cfc0a596b'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
