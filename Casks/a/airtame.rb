cask "airtame" do
  version "4.9.0"
  sha256 "106a9eee3f30c3a206373d4f6617522934edc33ab875a8a09e7c1ed1e0cf09be"

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  name "Airtame"
  desc "Wireless screen sharing platform"
  homepage "https://airtame.com/"

  livecheck do
    url "https://downloads-website.airtame.com/get.php?platform=mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Airtame.app"

  zap trash: [
    "~/Library/Application Support/airtame-application",
    "~/Library/Logs/Airtame",
    "~/Library/Preferences/com.airtame.airtame-application.plist",
    "~/Library/Saved Application State/com.airtame.airtame-application.savedState",
  ]
end
