cask "airtame" do
  version "4.12.0"
  sha256 "ae786a2efaaad7f2b9cea8594959a61be50b86638a6b5b1a996ecb06a1a16a92"

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  name "Airtame"
  desc "Wireless screen sharing platform"
  homepage "https://airtame.com/"

  livecheck do
    url "https://downloads-website.airtame.com/get.php?platform=mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
