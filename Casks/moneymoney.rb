cask 'moneymoney' do
  version '2.2.10'
  sha256 'b2b15d4b68c48d3e967c67bdbc5da70e686893eb1cdd1a00d547c5840dfa3e54'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'd7c9a17c81ae68c2aba319c16c9555184f22a5ed4bfc09c95aaf9ab7280c5530'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :commercial

  app 'MoneyMoney.app'
end
