cask "moneymoney" do
  version "2.4.48"
  sha256 :no_check

  url "https://moneymoney-app.com/download/MoneyMoney.pkg"
  name "MoneyMoney"
  desc "German banking and financial management software"
  homepage "https://moneymoney-app.com/"

  livecheck do
    url "https://service.moneymoney-app.com/1/Appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "MoneyMoney.pkg"

  uninstall pkgutil: "com.moneymoney-app.retail"

  zap trash: [
    "~/Library/Application Scripts/com.moneymoney-app.retail",
    "~/Library/Caches/com.moneymoney-app.retail",
    "~/Library/Containers/MoneyMoney",
    "~/Library/Saved Application State/com.moneymoney-app.retail.savedState",
  ]
end
