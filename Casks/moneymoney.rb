cask 'moneymoney' do
  version '2.3.9'
  sha256 '261b7ccc1745f7856259c84c200aadfea65a3b42180e1d4e5408da89bae89d7d'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
