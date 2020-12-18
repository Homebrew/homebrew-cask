cask "notion" do
  version "2.0.11"
  sha256 "5b549f7ccc4738808ba997b22e63d626dbd79b9d7c544901fca7a9fe0a3073f8"

  url "https://desktop-release.notion-static.com/Notion-#{version}.dmg",
      verified: "desktop-release.notion-static.com/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.notion.so/desktop/mac/download&user_agent=MacOS"
  name "Notion"
  desc "App to write, plan, collaborate, and get organized"
  homepage "https://www.notion.so/"

  auto_updates true

  app "Notion.app"

  zap trash: [
    "~/Library/Application Support/Notion",
    "~/Library/Caches/notion.id",
    "~/Library/Logs/Notion",
    "~/Library/Preferences/notion.id.helper.plist",
    "~/Library/Preferences/notion.id.plist",
    "~/Library/Saved Application State/notion.id.savedState",
    "~/Library/WebKit/notion.id",
  ]
end
