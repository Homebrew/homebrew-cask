cask 'moneymoney' do
  version '2.3.0'
  sha256 '24ee8bf09c5d45eba06156e0ed58adf9d2f310cdff1b42e07716352b54d4d12a'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: '05981a50e80b0f1b8697057a25e01e71c22a5ec692f708a3e5fa91ee03cdea18'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
