cask "drivethrurpg" do
  version "3.3.0.0"
  sha256 "558091905cf17303491f8e454caa77a13079c8e142ddc910e373dfdaf26ec424"

  url "https://dtrpg-library-app.s3.us-east-2.amazonaws.com/DriveThruRPG_v#{version}.dmg",
      verified: "dtrpg-library-app.s3.us-east-2.amazonaws.com/"
  name "DriveThruRPG Library App"
  desc "Sync DriveThruRPG libraries to compatible devices"
  homepage "https://www.drivethrurpg.com/library_client.php"

  livecheck do
    url "https://www.drivethrurpg.com/library-client/current-version-osx.txt"
    regex(%r{.*?/DriveThruRPG_v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "DriveThruRPG.app"
end
