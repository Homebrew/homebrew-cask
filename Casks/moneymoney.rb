cask "moneymoney" do
  version "2.4.2,382"
  sha256 :no_check

  url "https://service.moneymoney-app.com/1/MoneyMoney.zip"
  name "MoneyMoney"
  desc "German banking and financial management software"
  homepage "https://moneymoney-app.com/"

  livecheck do
    url "https://service.moneymoney-app.com/1/Appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "MoneyMoney.app"
end
