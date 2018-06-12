cask 'moneymoney' do
  version '2.3.4'
  sha256 '12f42af7ebef0b47c9d827532ce889b3eb6bc24ee015479ae2bd8007d72b1262'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
