cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "apple-silicon", intel: "mac"

  version "2.1.13"
  sha256 arm:   "658125c5d2df38e82a0b416dd0f0e516efdde85ebda8a103c26665bf87fe5af5",
         intel: "e49e06c30779f4252e55f3b357d92904b8cc0475e0b7461598d0c9a1082c08f2"

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
