cask 'moneymoney' do
  version '2.2.15'
  sha256 'eb0e349c19552b9fc7ce8597189f802466b6e3f437c772a38b3cee8285cf851d'

  url 'https://service.moneymoney-app.com/1/MoneyMoney.zip'
  appcast 'https://service.moneymoney-app.com/1/Appcast.xml',
          checkpoint: 'de82ff74f7672be16598ad14e2a47bd38f0ffb4af7da0c57495ed17d26dc8aff'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'

  app 'MoneyMoney.app'
end
