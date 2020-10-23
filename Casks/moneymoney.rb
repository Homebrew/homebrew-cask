cask "moneymoney" do
  version "2.3.35"
  sha256 "f73091d8db53910d30a67f3552a9e6c0bbe6b7151c7e96d98f74b10b4a1aced4"

  url "https://service.moneymoney-app.com/1/MoneyMoney.zip"
  appcast "https://service.moneymoney-app.com/1/Appcast.xml"
  name "MoneyMoney"
  desc "German banking and financial management software"
  homepage "https://moneymoney-app.com/"

  auto_updates true

  app "MoneyMoney.app"
end
