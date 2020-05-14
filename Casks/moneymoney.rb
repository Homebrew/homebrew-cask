cask 'moneymoney' do
  version '2.3.26'
  sha256 'f63fe481774cf493549d3f1286311d9698319d123db65bd8c5b7ada0edf46f76'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
