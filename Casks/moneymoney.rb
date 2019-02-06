cask 'moneymoney' do
  version '2.3.10'
  sha256 '29f4c374aa48f5ea1643e81d6f37503313465fd43b0d4d7e317d63e5e3b2ab7b'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
