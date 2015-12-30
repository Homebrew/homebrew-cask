cask 'moneymoney' do
  version :latest
  sha256 :no_check

  url 'https://moneymoney-app.com/download/MoneyMoney.zip'
  appcast 'https://moneymoney-app.com/update/appcast.xml',
          :sha256 => '6f64a33786f0a3b469dfb4ff70ff1241eb678f049590dd79fccd98fe17087a37'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :commercial

  app 'MoneyMoney.app'
end
