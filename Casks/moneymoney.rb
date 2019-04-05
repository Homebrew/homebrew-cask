cask 'moneymoney' do
  version '2.3.12'
  sha256 'b2135eeddb63f3b4ac692cd46ff4dde5b6b03bd26a714a8216198ce8d6c3d610'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
