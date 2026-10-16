cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "latest"

  sha256 arm:   "0e22c2f5d950f5430834bb0eb4e1ad9a90ddea85433d2d9428e6a9fb2809f9e8",
         intel: "c966f1c9696f258570b17fa3dc30f660ded94d24b285778eb020f99c4237bab5"

  on_arm do
    version "7.39.0"
  end
  on_intel do
    version "7.39.0"
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
  depends_on macos: :ventura

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
