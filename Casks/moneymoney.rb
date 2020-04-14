cask 'moneymoney' do
  version '2.3.25'
  sha256 '291f55d376dc0a4f8ad4790a737406408ef67d2faba86bbe3679f3eebf046d97'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
