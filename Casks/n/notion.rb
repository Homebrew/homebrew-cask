cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "latest"

  version "3.18.0"
  sha256 arm:   "2682a7f0941dfd80b678c26c136812fd03fe069161823a7ccf460c5f6716c0d6",
         intel: "9721342ab5e19fbd66a3d5403c6c76767d1550d7469de28afce180f7cb6d1f62"

  url "https://desktop-release.notion-static.com/Notion-#{version}#{arch}.dmg",
      verified: "desktop-release.notion-static.com/"
  name "Notion"
  desc "App to write, plan, collaborate, and get organised"
  homepage "https://www.notion.so/"

  livecheck do
    url "https://desktop-release.notion-static.com/#{livecheck_folder}-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
