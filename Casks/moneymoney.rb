cask 'moneymoney' do
  version '2.2.9'
  sha256 'dcdb1f70267328ac281ceb7ab3ddb87e17f0e736741653a0ea45f3a2db32c5e3'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          :sha256 => '3172028de57f260078a002c04a2126aec4dc3d4b5a0c9c9528a1b4ffeba39bea'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :commercial

  app 'MoneyMoney.app'
end
