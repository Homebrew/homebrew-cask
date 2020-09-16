cask "superduper" do
  version "3.3.1,121"
  sha256 "589d2ae96d8d130e7a7de2124f6f8c12ab49a21b96e6260df734d39ebb896433"

  # shirtpocket.s3.amazonaws.com/SuperDuper/ was verified as official when first introduced to the cask
  url "https://shirtpocket.s3.amazonaws.com/SuperDuper/SuperDuper!.dmg"
  appcast "https://versioncheck.blacey.com/superduper/version.xml?VSN=100",
          must_contain: version.after_comma
  name "SuperDuper!"
  desc "Backup, recovery and cloning software"
  homepage "https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html"

  app "SuperDuper!.app"

  zap trash: "~/Library/Application Support/SuperDuper!"
end
