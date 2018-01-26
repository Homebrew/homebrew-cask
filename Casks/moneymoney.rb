cask 'moneymoney' do
  version '2.3.3'
  sha256 '270fd08dad1832220b0af627c3df4d9975e24996e8d9a36fd568543c25d16fa8'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'd7e35c98a0929c271c0698d1f8e06fe5e5c8d773c593b72097efb4d176e71fec'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
