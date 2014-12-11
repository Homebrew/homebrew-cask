cask :v1 => 'moneymoney' do
  version :latest
  sha256 :no_check

  url 'http://moneymoney-app.com/download/MoneyMoney.zip'
  appcast 'http://moneymoney-app.com/update/appcast.xml'
  homepage 'http://moneymoney-app.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'MoneyMoney.app'
end
