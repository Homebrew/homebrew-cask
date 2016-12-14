cask 'moneymoney' do
  version '2.2.15'
  sha256 'd9827e500af6e530eea02e92a73feb42200d262b5d6e427023f1c1bd95218515'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'fcdb0dab20cce8545360daaed1b47d85f67b25bcf2e7e3e87ea7618c3f6de337'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
