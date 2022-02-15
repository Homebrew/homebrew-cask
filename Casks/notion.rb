cask "notion" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "apple-silicon"

  version "2.0.20"

  if Hardware::CPU.intel?
    sha256 "d0201755fdc61be7154d113b30f50724a9bc52e7842433ed3918931fbca5154f"
  else
    sha256 "3c4da14261821bbe2d769741f19ac5edc57130591f0e20f2080468b73a488947"
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
    "~/Library/Application Support/Notion",
    "~/Library/Caches/notion.id",
    "~/Library/Logs/Notion",
    "~/Library/Preferences/notion.id.helper.plist",
    "~/Library/Preferences/notion.id.plist",
    "~/Library/Saved Application State/notion.id.savedState",
    "~/Library/WebKit/notion.id",
  ]
end
