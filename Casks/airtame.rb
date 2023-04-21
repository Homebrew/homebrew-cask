cask "airtame" do
  version "4.6.2"
  sha256 "86ba2b0af7b662d20de6f9cb00bb0478786b898d899673a3d25b960f5018f89c"

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  name "Airtame"
  desc "Wireless screen sharing platform"
  homepage "https://airtame.com/"

  livecheck do
    url "https://downloads-website.airtame.com/get.php?platform=mac"
    strategy :header_match
  end

  auto_updates true

  app "Airtame.app"

  zap trash: [
    "~/Library/Application Support/airtame-application",
    "~/Library/Logs/Airtame",
    "~/Library/Preferences/com.airtame.airtame-application.plist",
    "~/Library/Saved Application State/com.airtame.airtame-application.savedState",
  ]
end
