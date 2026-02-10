cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "latest"

  version "7.4.0"
  sha256 arm:   "dd284f9e95dfa819e2c18c40c9d6c47d5975240bcc19fefaa99be9c6a62af02f",
         intel: "c103671134a01c8b1fff425177b5d802a296d61ec7a776b5da9384d8a800e6db"

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
  depends_on macos: ">= :monterey"

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
