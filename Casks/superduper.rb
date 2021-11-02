cask "superduper" do
  version "3.5,122"
  sha256 :no_check

  url "https://shirtpocket.s3.amazonaws.com/SuperDuper/SuperDuper!.dmg",
      verified: "shirtpocket.s3.amazonaws.com/SuperDuper/"
  name "SuperDuper!"
  desc "Backup, recovery and cloning software"
  homepage "https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SuperDuper!.app"

  zap trash: "~/Library/Application Support/SuperDuper!"
end
