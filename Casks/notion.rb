cask "notion" do
  version "2.0.11"

  if Hardware::CPU.intel?
    sha256 "5b549f7ccc4738808ba997b22e63d626dbd79b9d7c544901fca7a9fe0a3073f8"

    url "https://desktop-release.notion-static.com/Notion-#{version}.dmg",
        verified: "desktop-release.notion-static.com/"
  else
    sha256 "aed019ddac9fdd72c8595214971366374da66d15e267786ac4f9e9055a4d44ed"

    url "https://desktop-release.notion-static.com/Notion-#{version}-arm64.dmg",
        verified: "desktop-release.notion-static.com/"
  end

  name "Notion"
  desc "App to write, plan, collaborate, and get organized"
  homepage "https://www.notion.so/"

  livecheck do
    url "https://www.notion.so/desktop/mac/download"
    strategy :header_match
  end

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
