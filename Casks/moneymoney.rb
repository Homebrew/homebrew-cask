cask 'moneymoney' do
  version '2.3.27'
  sha256 'b3920162fa7a165280eab49e08ad2b875623020967bdc98cc5e83fe34009b6fa'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
