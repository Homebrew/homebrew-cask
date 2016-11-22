cask 'moneymoney' do
  version '2.2.14'
  sha256 'f2b0e7aaebc32d26ae564277eaeb109fee18ba391e130323126ac7e5fbcd9dec'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'f0f575e751df4210aaf8a27da3415fba286e20986fba70bbd3bd093495fb83a4'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
