cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "latest"

  sha256 arm:   "1fcb7b41d67ddab028f4d5a195eae97ec8ff991696f7ee9b07df772c3405c1d2",
         intel: "44148f5a379437172af46cade8d48b4de61bf8e34b40c8c87b4147dc6bd90e5d"

  on_arm do
    version "7.35.1"
  end
  on_intel do
    version "7.35.1"
  end

  url "https://desktop-release.notion-static.com/Notion-#{version}#{arch}.dmg"
  name "Notion"
  desc "App to write, plan, collaborate, and get organised"
  homepage "https://www.notion.com/"

  livecheck do
    url "https://desktop-release.notion-static.com/#{livecheck_folder}-mac.yml?noCache=#{Time.now.to_i}"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Notion.app"

  uninstall quit: "notion.id"

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
