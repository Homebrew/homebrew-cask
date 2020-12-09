cask "moneymoney" do
  version "2.3.35,375"
  sha256 "29757cbeb431914ae7f22dd1f99446d837a1183655b3d0c49f5e6929740facb7"

  url "https://service.moneymoney-app.com/1/MoneyMoney.zip"
  appcast "https://service.moneymoney-app.com/1/Appcast.xml"
  name "MoneyMoney"
  desc "German banking and financial management software"
  homepage "https://moneymoney-app.com/"

  auto_updates true

  app "MoneyMoney.app"
end
