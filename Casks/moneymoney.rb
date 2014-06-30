class Moneymoney < Cask
  version 'latest'
  sha256 :no_check

  url 'http://moneymoney-app.com/download/MoneyMoney.zip'
  appcast 'http://moneymoney-app.com/update/appcast.xml'
  homepage 'http://moneymoney-app.com/'

  link 'MoneyMoney.app'
end
