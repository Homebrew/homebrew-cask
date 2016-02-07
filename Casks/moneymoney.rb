cask 'moneymoney' do
  version '2.2.9'
  sha256 'e9e110bd6c958612505115298ce856c8b99da773990897333aa26c94e3834134'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: '3a7caaacc477862bf85d5551355cf298d86d2ff1838a1bb4c9448b6f99794ffe'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :commercial

  app 'MoneyMoney.app'
end
