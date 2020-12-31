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
end
