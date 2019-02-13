cask 'moneymoney' do
  version '2.3.11'
  sha256 'cdd0a66220d977d9ff11f98e7e3df2e77bc6c0baac67d557bed6bf50e98335c1'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
