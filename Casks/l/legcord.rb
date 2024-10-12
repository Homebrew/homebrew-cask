cask "legcord" do
  version "1.0.1"
  sha256 "85f63271dc1b6c3c2451018f4e3341bb6a7d362accc7af8678a5944669e9cf06"

  url "https://github.com/legcord/legcord/releases/download/v#{version}/legcord-#{version}-mac-universal.dmg",
      verified: "github.com/legcord/legcord/"
  name "Legcord"
  desc "Custom Discord client"
  homepage "https://legcord.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "legcord.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.legcord.legcord.sfl*",
    "~/Library/Application Support/legcord",
    "~/Library/Preferences/app.legcord.Legcord.plist",
    "~/Library/Saved Application State/app.legcord.Legcord.savedState",
  ]
end
