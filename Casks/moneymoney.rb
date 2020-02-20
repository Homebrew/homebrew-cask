cask 'moneymoney' do
  version '2.3.24'
  sha256 'd20e74baba6c164ffd793c52d5b566a7fc134deb8e8e10aa1076fbd770b927d0'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
