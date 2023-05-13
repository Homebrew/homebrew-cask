cask "moneymoney" do
  version "2.4.27"
  sha256 :no_check

  url "https://service.moneymoney-app.com/1/MoneyMoney.zip"
  name "MoneyMoney"
  desc "German banking and financial management software"
  homepage "https://moneymoney-app.com/"

  livecheck do
    url "https://service.moneymoney-app.com/1/Appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "MoneyMoney.app"

  zap trash: [
    "~/Library/Application Scripts/com.moneymoney-app.retail",
    "~/Library/Caches/com.moneymoney-app.retail",
    "~/Library/Containers/MoneyMoney",
    "~/Library/Saved Application State/com.moneymoney-app.retail.savedState",
  ]
end
