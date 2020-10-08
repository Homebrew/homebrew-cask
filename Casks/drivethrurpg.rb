cask "drivethrurpg" do
  version "3.0.0.7"
  sha256 "33f13331b9e285e27fc6eb83d1cfb3489a64785ac301c8ce47d3857f1fce7e39"

  # dtrpg-library-app.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://dtrpg-library-app.s3.us-east-2.amazonaws.com/DriveThruRPG.dmg"
  appcast "https://www.drivethrurpg.com/library_client.php?os=Macintosh"
  name "DriveThruRPG Library App"
  desc "Sync DriveThruRPG libraries to compatible devices"
  homepage "https://www.drivethrurpg.com/library_client.php"

  depends_on macos: ">= :high_sierra"

  app "DriveThruRPG.app"
end
