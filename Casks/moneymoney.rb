cask 'moneymoney' do
  version '2.3.6'
  sha256 '77835c0bd738347814dd240be3d8787da247355b022e4fc0b8a14c6d2020806b'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
