cask "airtame" do
  version "4.16.1"
  sha256 "02dd90b93ea11de5c413d0ce5d4e96766f64695141f3edff714f42bff2bed8a1"

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  name "Airtame"
  desc "Wireless screen sharing platform"
  homepage "https://airtame.com/"

  livecheck do
    url "https://downloads-website.airtame.com/get.php?platform=mac"
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

  app "Airtame.app"

  zap trash: [
    "~/Library/Application Support/airtame-application",
    "~/Library/Logs/Airtame",
    "~/Library/Preferences/com.airtame.airtame-application.plist",
    "~/Library/Saved Application State/com.airtame.airtame-application.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
