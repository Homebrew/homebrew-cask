cask 'moneymoney' do
  version '2.2.17'
  sha256 '91fb2cce75eade00dc202b3daca0cfbf18e93b9f21b37e7e022f7a57a47cbc40'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'ff28ed32de5ae9fdac81f8a13348e5199ee7770a8d2f1482cbb3bca9493060ab'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
