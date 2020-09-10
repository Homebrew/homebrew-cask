cask "moneymoney" do
  version "2.3.31"
  sha256 "0c10ef808efc44a098f676d91a62c7f6175a8d8c6e90c0f2020425fb2ce7e8e6"

  url "https://service.moneymoney-app.com/1/MoneyMoney.zip"
  appcast "https://service.moneymoney-app.com/1/Appcast.xml"
  name "MoneyMoney"
  desc "German banking and financial management software"
  homepage "https://moneymoney-app.com/"

  auto_updates true

  app "MoneyMoney.app"
end
