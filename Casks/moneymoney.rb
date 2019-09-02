cask 'moneymoney' do
  version '2.3.18'
  sha256 '21bed5bc7320852b049dd47cba9d773d1817e87bcd5a500d996ddf00d2da3871'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
