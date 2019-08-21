cask 'moneymoney' do
  version '2.3.17'
  sha256 'e9e3c75e4f2781fc205735523dd6d170780c3c4f4188e5959b3236f276ea4f59'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
