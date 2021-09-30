cask "notion" do
  if Hardware::CPU.intel?
    version "2.0.18"
    sha256 "b571d26e9ed018afcb2040d88e8a8e26d2d6a76bb97aaae047169c8f98361ef6"

    url "https://desktop-release.notion-static.com/Notion-#{version}.dmg",
        verified: "desktop-release.notion-static.com/"

    livecheck do
      url "https://www.notion.so/desktop/mac/download"
      strategy :header_match
    end
  else
    version "2.0.17"
    sha256 "7411f5b5c2de8865cf47b112b26bd04cc70182ddd19b2f99ff6f33ffc5577ed9"

    url "https://desktop-release.notion-static.com/Notion-#{version}-arm64.dmg",
        verified: "desktop-release.notion-static.com/"

    livecheck do
      url "https://www.notion.so/desktop/apple-silicon/download"
      strategy :header_match
      regex(/Notion-(\d+(?:\.\d+)*?)(?:-arm64)?\.dmg/i)
    end
  end

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
