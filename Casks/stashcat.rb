cask "stashcat" do
  version :latest
  sha256 :no_check

  url "https://stashcat.s3-de-central.profitbricks.com/installer/StashcatSetup.dmg",
      verified: "https://stashcat.s3-de-central.profitbricks.com/installer/"
  name "Stashcat"
  desc "GDPR-compliant secure messenger"
  homepage "https://stashcat.com/"

  app "Stashcat.app"
end
