cask 'moneymoney' do
  version '2.2.13'
  sha256 'd07e404989eee52ef56990066ec709edd823da9cefb06c77ef16f454e199ad5b'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: '45fabc14fba973b00d5e1da3de635062d7b8996ce668286fd42f6fc0dc7a8d62'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :commercial

  app 'MoneyMoney.app'
end
