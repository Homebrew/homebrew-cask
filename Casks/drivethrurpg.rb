cask "drivethrurpg" do
  version "3.1.5.0"
  sha256 "7d24ad2e09d744ad4408ca815f7454905634ad8778013324bd74ba15bc749068"

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
