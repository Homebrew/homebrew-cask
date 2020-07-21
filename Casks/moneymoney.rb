cask 'moneymoney' do
  version '2.3.30'
  sha256 'a955a3d8180bf7b850f7527573b53144994b3117e7f122d9f874430b69057d33'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
