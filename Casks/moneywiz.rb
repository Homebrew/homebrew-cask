cask "moneywiz" do
  version "3.7.9,992"
  sha256 :no_check

  url "https://mac.wiz.money/MoneyWiz_Mac_Free.dmg"
  name "MoneyWiz"
  desc "Finance management application"
  homepage "https://wiz.money/"

  livecheck do
    url "https://macdistribution.wiz.money/version_info_free.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "MoneyWiz #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.moneywiz.personalfinance",
    "~/Library/Application Scripts/com.moneywiz.personalfinance.MoneyWizWidgets",
    "~/Library/Application Scripts/com.moneywiz.personalfinance.MoneyWizWidgetsIntentsExtension",
    "~/Library/Application Scripts/group.com.silverwiz.moneywiz.personalfinance",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.moneywiz.ios.free",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.moneywiz.ios.free.plist",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.moneywiz.personalfinance",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.moneywiz.personalfinance.plist",
    "~/Library/Containers/com.moneywiz.personalfinance.MoneyWizWidgets",
    "~/Library/Containers/com.moneywiz.personalfinance.MoneyWizWidgetsIntentsExtension",
    "~/Library/Group Containers/group.com.silverwiz.moneywiz.personalfinance",
    "~/Library/Containers/com.moneywiz.personalfinance",
  ]
end
