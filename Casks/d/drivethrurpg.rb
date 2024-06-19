cask "drivethrurpg" do
  version "3.4.6"
  sha256 "4ed84b80a84f442a9b2049f5338a0769aa937d6e31af3b193480f95d506436ee"

  url "https://dtrpg-library-app.s3.amazonaws.com/DriveThruRPG_#{version}.dmg",
      verified: "dtrpg-library-app.s3.amazonaws.com/"
  name "DriveThruRPG Library App"
  desc "Sync DriveThruRPG libraries to compatible devices"
  homepage "https://www.drivethrurpg.com/library_client.php"

  livecheck do
    url :homepage
    regex(/href=.*?DriveThruRPG[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "DriveThruRPG.app"

  zap trash: [
    "~/Library/Preferences/com.onebookshelf.DriveThruRPG.plist",
    "~/Library/Saved Application State/com.drivethrurpg.savedState",
  ]
end
