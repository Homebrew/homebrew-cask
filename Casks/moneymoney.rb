cask "moneymoney" do
  version "2.3.33"
  sha256 "7c536147b63f1d57967e301b228f63b6a3d408e1edb330b0796ee358be0e2de6"

  url "https://service.moneymoney-app.com/1/MoneyMoney.zip"
  appcast "https://service.moneymoney-app.com/1/Appcast.xml"
  name "MoneyMoney"
  desc "German banking and financial management software"
  homepage "https://moneymoney-app.com/"

  auto_updates true

  app "MoneyMoney.app"
end
