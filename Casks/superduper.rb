cask "superduper" do
  version "3.3.1,121"
  sha256 :no_check

  url "https://shirtpocket.s3.amazonaws.com/SuperDuper/SuperDuper!.dmg",
      verified: "shirtpocket.s3.amazonaws.com/SuperDuper/"
  appcast "https://versioncheck.blacey.com/superduper/version.xml?VSN=100",
          must_contain: version.after_comma
  name "SuperDuper!"
  desc "Backup, recovery and cloning software"
  homepage "https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html"

  app "SuperDuper!.app"

  zap trash: "~/Library/Application Support/SuperDuper!"
end
