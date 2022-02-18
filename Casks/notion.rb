cask "notion" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "apple-silicon"

  if Hardware::CPU.intel?
    sha256 "99aa55754601b055b8b85cc337c12a7c0e7a9fcd076dec86b400ca45c1eee1cc"
    version "2.0.21"
  else
    sha256 "3c4da14261821bbe2d769741f19ac5edc57130591f0e20f2080468b73a488947"
    version "2.0.20"
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
