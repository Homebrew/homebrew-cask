cask "notion" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "apple-silicon"

  if Hardware::CPU.intel?
    version "2.0.20"
    sha256 "d0201755fdc61be7154d113b30f50724a9bc52e7842433ed3918931fbca5154f"
  else
    version "2.0.19"
    sha256 "6235693e3f202bc7d064a18239e035709952d7870901704ae342c37fd08b0520"
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
