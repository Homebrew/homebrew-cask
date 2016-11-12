cask 'moneymoney' do
  version '2.2.14'
  sha256 '8ae726b176e911a69eb36098cf1d2261ffb2e694de513d706ca1df83987e9c80'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'd818c995d76021e31156c296b69c175d77818a3e0506c49136ba2041d3ab4cef'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
