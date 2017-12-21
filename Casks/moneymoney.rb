cask 'moneymoney' do
  version '2.3.3'
  sha256 '67c8f64a237eea684553efbe2537912e3e1de44659e304566b42436272fff646'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: '7b6ca7ecbff8c4fdbdc1648b7acb578980543b77801c93a65533b4bf51202663'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
