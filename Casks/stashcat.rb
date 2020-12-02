cask "stashcat" do
  version :latest
  sha256 :no_check

  # stashcat.s3-de-central.profitbricks.com was verified as official when first introduced to the cask
  url "https://stashcat.s3-de-central.profitbricks.com/installer/StashcatSetup.dmg",
      verified: "https://stashcat.s3-de-central.profitbricks.com/installer/"
  name "Stashcat"
  desc "GDPR-compliant secure messenger"
  homepage "https://stashcat.com/"

  app "Stashcat.app"
end
