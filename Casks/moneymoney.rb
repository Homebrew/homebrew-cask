cask :v1 => 'moneymoney' do
  version :latest
  sha256 :no_check

  url 'https://moneymoney-app.com/download/MoneyMoney.zip'
  appcast 'https://moneymoney-app.com/update/appcast.xml'
  name 'MoneyMoney'
  homepage 'https://moneymoney-app.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MoneyMoney.app'
end
