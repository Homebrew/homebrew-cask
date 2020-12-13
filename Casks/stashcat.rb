cask "stashcat" do
  version "3.19.2.3930"
  sha256 :no_check

  url "https://stashcat.s3-de-central.profitbricks.com/installer/StashcatSetup.dmg",
      verified: "https://stashcat.s3-de-central.profitbricks.com/installer/"
  name "Stashcat"
  desc "GDPR-compliant secure messenger"
  homepage "https://stashcat.com/"

  app "Stashcat.app"

  zap trash: [
    "~/Library/Application Support/Stashcat",
    "~/Library/Caches/de.heinekingmedia.stashcatdesktopmessenger",
    "~/Library/Caches/de.heinekingmedia.stashcatdesktopmessenger.ShipIt",
    "~/Library/Preferences/de.heinekingmedia.stashcatdesktopmessenger.plist",
    "~/Library/Saved Application State/de.heinekingmedia.stashcatdesktopmessenger.savedState",
  ]
end
