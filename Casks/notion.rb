cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "apple-silicon", intel: "mac"

  on_intel do
    version "2.1.9"
    sha256 "8d8819babc41d0ab554735b34f6880b6673203a4791503665824549bf57cee73"
  end
  on_arm do
    version "2.1.9"
    sha256 "03c839398db0436fd70168ca8827d127eeaadee45a7b4f004822d8c0680a0e37"
  end

  url "https://desktop-release.notion-static.com/Notion-#{version}#{arch}.dmg",
      verified: "desktop-release.notion-static.com/"
  name "Notion"
  desc "App to write, plan, collaborate, and get organized"
  homepage "https://www.notion.so/"

  livecheck do
    url "https://www.notion.so/desktop/#{livecheck_folder}/download"
    strategy :header_match
    regex(/Notion[._-]v?(\d+(?:\.\d+)*?)[^.]*?\.dmg/i)
  end

  auto_updates true

  app "Notion.app"

  zap trash: [
    "~/Library/Application Support/Caches/notion-updater",
    "~/Library/Application Support/Notion",
    "~/Library/Caches/notion.id",
    "~/Library/Logs/Notion",
    "~/Library/Preferences/notion.id.helper.plist",
    "~/Library/Preferences/notion.id.plist",
    "~/Library/Saved Application State/notion.id.savedState",
    "~/Library/WebKit/notion.id",
  ]
end
