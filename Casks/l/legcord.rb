cask "legcord" do
  version "1.2.2"
  sha256 "3249d00b55414860a568579766efaa042c7bf4e4b470fdd87750cd37be49091f"

  url "https://github.com/legcord/legcord/releases/download/v#{version}/legcord-#{version}-mac-universal.dmg",
      verified: "github.com/legcord/legcord/"
  name "Legcord"
  desc "Custom Discord client"
  homepage "https://legcord.app/"

  livecheck do
    url "https://legcord.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :monterey"

  app "legcord.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.legcord.legcord.sfl*",
    "~/Library/Application Support/legcord",
    "~/Library/Preferences/app.legcord.Legcord.plist",
    "~/Library/Saved Application State/app.legcord.Legcord.savedState",
  ]
end
