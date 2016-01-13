cask 'moneymoney' do
  version '2.2.9'
  sha256 'dcdb1f70267328ac281ceb7ab3ddb87e17f0e736741653a0ea45f3a2db32c5e3'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          :checkpoint => 'de0b6b44806291524a3d41eefb3276352f2faa64abaa94d9c7f3190a3b6e1442'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :commercial

  app 'MoneyMoney.app'
end
