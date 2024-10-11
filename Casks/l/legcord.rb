cask "legcord" do
  version "1.0.0"
  sha256 "fbc61a35d3eb0d0d398ed3e8fcfd62b6a771da1cb8e484e66a4c67dc4b7aa0a3"

  url "https://github.com/legcord/legcord/releases/download/v#{version}/legcord-#{version}-mac-universal.dmg",
      verified: "github.com/legcord/legcord/"
  name "legcord"
  desc "Custom lightweight Discord client designed to enhance your experience"
  homepage "https://legcord.app/"

  depends_on macos: ">= :catalina"

  app "legcord.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.legcord.legcord.sfl*",
    "~/Library/Application Support/legcord",
    "~/Library/Preferences/app.legcord.Legcord.plist",
    "~/Library/Saved Application State/app.legcord.Legcord.savedState",
  ]
end
