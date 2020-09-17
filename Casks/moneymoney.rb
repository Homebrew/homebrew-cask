cask "moneymoney" do
  version "2.3.32"
  sha256 "1a6e408ea26f243fc83d6a63bbc6149a02b3ce5f511b600b38f94eb7cc3ad956"

  url "https://service.moneymoney-app.com/1/MoneyMoney.zip"
  appcast "https://service.moneymoney-app.com/1/Appcast.xml"
  name "MoneyMoney"
  desc "German banking and financial management software"
  homepage "https://moneymoney-app.com/"

  auto_updates true

  app "MoneyMoney.app"
end
