cask 'moneymoney' do
  version '2.3.13'
  sha256 'e5a072e7523ae998a17420bf3c18e2c3e082aa37c44dedc4ad390eb6c63ddd58'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  auto_updates true

  app 'MoneyMoney.app'
end
