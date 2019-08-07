cask 'moneymoney' do
  version '2.3.16'
  sha256 'de69d4a3ca0db2f1e4d065e05467d47c36db66593feeaaa2c6905b0a9a659708'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
