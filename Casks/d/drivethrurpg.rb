cask "drivethrurpg" do
  version "3.6.3"
  sha256 "5b576c20918712c3d807cb8d744bfc5a0338fde1a0c6dd8091d12c34e0c0268f"

  url "https://dtrpg-library-app.s3.amazonaws.com/DriveThruRPG_#{version}.dmg",
      verified: "dtrpg-library-app.s3.amazonaws.com/"
  name "DriveThruRPG Library App"
  desc "Sync DriveThruRPG libraries to compatible devices"
  homepage "https://www.drivethrurpg.com/library_client.php"

  # The upstream homepage links to the latest dmg file but Cloudflare
  # protections prevent us from fetching it, so it must be checked manually.
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  depends_on macos: ">= :big_sur"

  app "DriveThruRPG.app"

  zap trash: [
    "~/Library/Preferences/com.onebookshelf.DriveThruRPG.plist",
    "~/Library/Saved Application State/com.drivethrurpg.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
