cask "notion" do
  if Hardware::CPU.intel?
    version "2.0.16"
    sha256 "a1213c8b9fb976ca380df3a506f214f3cc6871b89e1290acb54433698bd78ce4"
    url "https://desktop-release.notion-static.com/Notion-#{version}.dmg",
        verified: "desktop-release.notion-static.com/"
  else
    version "2.0.13"
    sha256 "abe3dd4adc5fc4ba591be2f031e22cb0c43ce2d5503fe925b005231e7941d5bf"
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
