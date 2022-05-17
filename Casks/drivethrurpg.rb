cask "drivethrurpg" do
  version "3.2.4.0"
  sha256 "f3e2a57e1b49b1494e722af4aaccab84265049de73ca208686d77baea2f5f6b7"

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
