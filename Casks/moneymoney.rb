cask 'moneymoney' do
  version '2.2.12'
  sha256 'def3e59b19d5acd7f3acf568c09fccab9b6dd63ef0a1bc8125d44d32f9d13ea6'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'c34e4d0540fbcf09f6f1bd9419be82867f8832c523f324a10f736bc010267d58'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :commercial

  app 'MoneyMoney.app'
end
