cask 'moneymoney' do
  version '2.3.28'
  sha256 'c4a562eb5015d048a72691ec4d4c83c8085a4367054f03891c5846b2b08147be'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
