cask 'moneymoney' do
  version '2.3.4'
  sha256 '12f42af7ebef0b47c9d827532ce889b3eb6bc24ee015479ae2bd8007d72b1262'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: '77e72169aa5d92a8056c85cf6a42e22ce32857f0f51aebd3d0ca5f26b964cef2'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
