cask 'moneymoney' do
  version '2.3.21'
  sha256 '32813871447763d03be1c2bb0abc25035c08f7cc50d932c4f0b7b0297ef5dadf'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
