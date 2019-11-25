cask 'moneymoney' do
  version '2.3.22'
  sha256 'b135ebae8bcefc53e381cbdd993e2a04fe724c3b5d7cea2e834fa0710c00e1a6'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
