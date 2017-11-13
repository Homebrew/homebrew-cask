cask 'moneymoney' do
  version '2.3.2'
  sha256 '9f92046dbb8227fd14bcce4e29ce954ea1243e83d1b52f2a6d923f7bf653e431'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: '3a23c53eee0325e0a1ed117050648d22ae183f62a9688274f542e16be6a20ca4'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
