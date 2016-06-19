cask 'moneymoney' do
  version '2.2.11'
  sha256 'db1f03f71cf150888e504c958341c8f5d191592e1b6d21bff336af0dac0e3892'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'bc13fef965482dbaa024e5cedb7af7a81ce6be91f7748e1bba84e4491c62ebc3'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :commercial

  app 'MoneyMoney.app'
end
