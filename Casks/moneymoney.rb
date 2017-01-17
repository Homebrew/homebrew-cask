cask 'moneymoney' do
  version '2.2.15'
  sha256 '13258e8ddb28e5a757920f7fe44e36495bc5784eaf55f148bd63c51b8cbfeca5'

  url 'https://moneymoney-app.com/download/MoneyMoney.pkg'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'aa9b2c98eba69af2c5dbbcef1a84f07866e5c6fd38790fc043c31b19a2b3972a'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
