cask 'moneymoney' do
  version '2.3.5'
  sha256 '37c97a9f7ca0950f1b0be23f496713cedc0953e3025104ddc8246ad2b7591a96'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
