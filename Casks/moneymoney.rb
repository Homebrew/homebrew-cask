cask 'moneymoney' do
  version '2.2.16'
  sha256 '30907acaff5fef387c41dc6928565710282f5cf078509bbbcf12bdad448ba3eb'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: '585815e5ce50cbee695b0670b4778dfc8cfbdc8e954a966c20819cf96221dadf'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
