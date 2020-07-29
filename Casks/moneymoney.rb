cask 'moneymoney' do
  version '2.3.29'
  sha256 '68a062ad6a13f906370a7d11ed2f1c2a795b96fdbae7739f5f072020e39fb79c'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
