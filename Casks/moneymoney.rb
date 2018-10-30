cask 'moneymoney' do
  version '2.3.8'
  sha256 '09ca7d5b2f8d7e4441c605285754426c9fe7ea8bdd758e2d216d5e8d0a10a56f'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
