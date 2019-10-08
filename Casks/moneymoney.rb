cask 'moneymoney' do
  version '2.3.20'
  sha256 '245ab315a53c2b5577bcdf16a6b83f8c882ef525b4762ead98921df17d9b5e4b'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
