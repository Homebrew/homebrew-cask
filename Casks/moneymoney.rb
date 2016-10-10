cask 'moneymoney' do
  version '2.2.14'
  sha256 'f86ebbd74dd38ee36ad45e65055d616538235aa1ada13624290b06b96de21a71'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'e2247ed7b757bcdb3f0276f9a9ecb8d60885760e9ff36778d175f82895e8ea4f'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
