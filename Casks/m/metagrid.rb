cask "metagrid" do
  version "1.3.1"
  sha256 "4b773729fe7584dc909fb4e4d143ae274adc9ebdef14b59f93acbceb37005f3c"

  url "https://github.com/maybewewill/metagrid/releases/download/v#{version}/MetaGrid_#{version}_universal.dmg",
      verified: "github.com/maybewewill/metagrid/"
  name "MetaGrid"
  desc "Automatic Dota 2 Meta Hero Grid Layout Manager synced with Dota2ProTracker"
  homepage "https://github.com/maybewewill/metagrid"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "MetaGrid.app"

  zap trash: [
    "~/Library/Application Support/com.metagrid.app",
    "~/Library/Caches/com.metagrid.app",
    "~/Library/Preferences/com.metagrid.app.plist",
    "~/Library/Saved Application State/com.metagrid.app.savedState",
  ]
end
