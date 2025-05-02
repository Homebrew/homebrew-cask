cask "airtame" do
  version "4.13.0"
  sha256 "713b7996a85490299c71f9cc60b69b7cdfa0a8bff77deae4b75f4cfd635862c0"

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
