cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "apple-silicon", intel: "mac"

  on_intel do
    version "2.1.11"
    sha256 "c9eab7cca6d63b2869010010659e37d6cafa13f07c1c4fe21e859c15accbb546"
  end
  on_arm do
    version "2.1.11"
    sha256 "c2d2cb58e85d9de250fd0dad75491ba1e1eb2d9c65a469121a09b9f1b285507c"
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
