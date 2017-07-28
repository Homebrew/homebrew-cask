cask 'moneymoney' do
  version '2.2.18'
  sha256 'f745867f1e891adfe6734e26ae5441bd8989b30390bffd729aa697fa73fcb165'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: '13ea64ecb8fa24a5734d5a23f3b9a052cb9f697a5d1a69f1dab57064cb04bfaf'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
