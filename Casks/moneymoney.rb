cask 'moneymoney' do
  version '2.2.9'
  sha256 'dcdb1f70267328ac281ceb7ab3ddb87e17f0e736741653a0ea45f3a2db32c5e3'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'd6dcca568821e4fb0cdfedbc27eee377dd08027dbc1cc11b346f11516ee2f16c'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :commercial

  app 'MoneyMoney.app'
end
