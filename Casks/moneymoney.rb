cask 'moneymoney' do
  version '2.2.15'
  sha256 'be09bf954c7253d160b68dc775a5084c51b2440e590c033a96db728e9b08c052'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'aa9b2c98eba69af2c5dbbcef1a84f07866e5c6fd38790fc043c31b19a2b3972a'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
