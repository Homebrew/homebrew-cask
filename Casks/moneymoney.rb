cask 'moneymoney' do
  version '2.3.23'
  sha256 '667c278e2f4920c115f3dc20126d7eadc3b4ece895ecc7eb1b51eb9671dd6109'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
