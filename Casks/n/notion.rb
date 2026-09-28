cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "latest"

  sha256 arm:   "cdac212b8e038c8f4871e822160f6dcb36a64259a6c0645a8230df7c021815ba",
         intel: "81ee9cd72879fc1219f00d613b5c7d1b83fdb2ca84202de2ad48da605523ad08"

  on_arm do
    version "7.36.0"
  end
  on_intel do
    version "7.36.0"
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
