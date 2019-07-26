cask 'moneymoney' do
  version '2.3.15'
  sha256 '25793d98f1b7e31ceb222b900e0874a6d4eebb3b6532075301921445d0e4893e'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
