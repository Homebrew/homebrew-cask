cask "moneywiz" do
  version "3.7.9"
  sha256 "98d331e5cab6cf4dbe90c0e1567de4ccb04a5225ca92f944ac85178f161adb88"

  url "https://mac.wiz.money/MoneyWiz_Mac_Free.dmg"
  appcast "https://macdistribution.wiz.money/version_info_free.xml"
  name "MoneyWiz"
  desc "Finance management application"
  homepage "https://wiz.money/"

  depends_on macos: ">= :sierra"

  app "MoneyWiz #{version.major}.app"
end
