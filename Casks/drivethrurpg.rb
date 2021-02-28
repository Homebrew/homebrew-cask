cask "drivethrurpg" do
  version "3.0.1.3"
  sha256 :no_check

  url "https://dtrpg-library-app.s3.us-east-2.amazonaws.com/DriveThruRPG.dmg",
      verified: "dtrpg-library-app.s3.us-east-2.amazonaws.com/"
  appcast "https://www.drivethrurpg.com/library_client.php?os=Macintosh"
  name "DriveThruRPG Library App"
  desc "Sync DriveThruRPG libraries to compatible devices"
  homepage "https://www.drivethrurpg.com/library_client.php"

  depends_on macos: ">= :high_sierra"

  app "DriveThruRPG.app"
end
