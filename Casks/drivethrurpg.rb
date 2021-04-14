cask "drivethrurpg" do
  version "3.0.1.3"
  sha256 "d12c39314aae8ef357e3204a1bf013319ebf3085fc47400c613345b5b2cdfc9e"

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
