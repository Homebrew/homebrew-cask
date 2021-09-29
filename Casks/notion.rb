cask "notion" do
  version "2.0.17"

  if Hardware::CPU.intel?
    sha256 "bf9a5b5ffe0f9e94808102b91d499d4bba6f4a5461efad3d0bc7bc9c709d1aaa"

    url "https://desktop-release.notion-static.com/Notion-#{version}.dmg",
        verified: "desktop-release.notion-static.com/"

    livecheck do
      url "https://www.notion.so/desktop/mac/download"
      strategy :header_match
    end
  else
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
