cask "moneymoney" do
  version "2.3.34"
  sha256 "b57bcb9bc1c6151dda6659c3db0e7520927350c3d373187d46aedb13f581c948"

  url "https://service.moneymoney-app.com/1/MoneyMoney.zip"
  appcast "https://service.moneymoney-app.com/1/Appcast.xml"
  name "MoneyMoney"
  desc "German banking and financial management software"
  homepage "https://moneymoney-app.com/"

  auto_updates true

  app "MoneyMoney.app"
end
