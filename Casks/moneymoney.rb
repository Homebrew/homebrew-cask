cask 'moneymoney' do
  version '2.3.14'
  sha256 '6f250b7519379282349da03309b5f470d724723288693e9a26aeca93532804d8'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
