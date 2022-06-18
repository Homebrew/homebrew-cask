cask "notion" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "apple-silicon"

  if Hardware::CPU.intel?
    version "2.0.23"
    sha256 "8081b230e2e2d7f9a439c17c6a0b9fc281c52cad65358f211149792e9cdd47c1"
  else
    version "2.1.0"
    sha256 "3811d30ee2ca40fe7f88df71e578838ea668d79bf3eb01b453baf3a82a6e333c"
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
