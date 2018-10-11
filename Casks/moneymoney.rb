cask 'moneymoney' do
  version '2.3.7'
  sha256 'aed6e69a2721301f3c849ff9f70c8c52d5e15716792a21446e822206483633fc'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
