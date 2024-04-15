cask "moneywiz" do
  version "3.7.9"
  sha256 :no_check

  url "https://mac.wiz.money/MoneyWiz_Mac_Free.dmg"
  name "MoneyWiz"
  desc "Finance management application"
  homepage "https://wiz.money/"

  deprecate! date: "2024-04-15", because: :moved_to_mas

  depends_on macos: ">= :high_sierra"

  app "MoneyWiz #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/*.moneywiz.personalfinance*",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.*.moneywiz.*",
    "~/Library/Containers/com.moneywiz.personalfinance*",
    "~/Library/Group Containers/group.com.silverwiz.moneywiz.personalfinance",
  ]
end
