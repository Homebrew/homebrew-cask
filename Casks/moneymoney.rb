class Moneymoney < Cask
  url 'http://moneymoney-app.com/download/MoneyMoney.zip'
  appcast 'http://moneymoney-app.com/update/appcast.xml'
  homepage 'http://moneymoney-app.com/'
  version 'latest'
  sha256 :no_check
  link 'MoneyMoney.app'
end
