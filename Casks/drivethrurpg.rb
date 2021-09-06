cask "drivethrurpg" do
  version "3.1.6.0"
  sha256 "a63c89cc721042db84531780f85c788c45f65517704c3df70a0ec7394547d7f7"

  url "https://dtrpg-library-app.s3.us-east-2.amazonaws.com/DriveThruRPG_v#{version}.dmg",
      verified: "dtrpg-library-app.s3.us-east-2.amazonaws.com/"
  name "DriveThruRPG Library App"
  desc "Sync DriveThruRPG libraries to compatible devices"
  homepage "https://www.drivethrurpg.com/library_client.php"

  livecheck do
    url "https://www.drivethrurpg.com/library-client/current-version-osx.txt"
    regex(%r{.*?/DriveThruRPG_v?(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "DriveThruRPG.app"
end
