cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "latest"

  version "4.13.0"
  sha256 arm:   "ce783f8dbddf50f0c746d7d28cfa689f0d95506d6bb82b8808b465aae47b4c17",
         intel: "820a1fdd96029ffbd21c26e4a68f947bb95bbe049c4525a8dd759895eb6b0029"

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
  depends_on macos: ">= :big_sur"

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
