cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "latest"

  version "7.22.0"
  sha256 arm:   "cc10093c96fce64ea29b5a82228ca0fb1577d4b438f9fdfbe55f816600fac2dd",
         intel: "cfa225cc964d23f20b6bfa8024b22ce6b2edd15dc3007443d6caf3704cba355f"

  url "https://desktop-release.notion-static.com/Notion-#{version}#{arch}.dmg",
      verified: "desktop-release.notion-static.com/"
  name "Notion"
  desc "App to write, plan, collaborate, and get organised"
  homepage "https://www.notion.com/"

  livecheck do
    url "https://desktop-release.notion-static.com/#{livecheck_folder}-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Notion.app"

  zap trash: [
    "~/Library/Application Support/Caches/notion-updater",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/notion.id.sfl*",
    "~/Library/Application Support/Notion",
    "~/Library/Caches/notion.id*",
    "~/Library/Logs/Notion",
    "~/Library/Preferences/ByHost/notion.id.*",
    "~/Library/Preferences/notion.id.*",
    "~/Library/Saved Application State/notion.id.savedState",
    "~/Library/WebKit/notion.id",
  ]
end
