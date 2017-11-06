cask 'moneymoney' do
  version '2.3.1'
  sha256 '514ec11fd244fd831263d880e6ab3c62d10598283d513878bff86421565ed4b4'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'cf8b01fa2b1816b15a649ad42129af4a88ebf4baa30f63fef127e8d3e17957b8'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
