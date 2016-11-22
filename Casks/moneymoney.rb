cask 'moneymoney' do
  version '2.2.14'
  sha256 'f2b0e7aaebc32d26ae564277eaeb109fee18ba391e130323126ac7e5fbcd9dec'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'd818c995d76021e31156c296b69c175d77818a3e0506c49136ba2041d3ab4cef'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
