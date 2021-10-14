cask "notion" do
  livecheck_folder = Hardware::CPU.intel? ? "mac" : "apple-silicon"

  if Hardware::CPU.intel?
    version "2.0.19"
    sha256 "0d13678367144d93f4243d2228e1cf40d1bb577592823ef4b9aff81659d64f22"
  else
    version "2.0.18-arm64"
    sha256 "fa9e299d206dbc68950c44806871c500afe6703532da8d768502f062646954f6"
  end

  url "https://desktop-release.notion-static.com/Notion-#{version}.dmg",
      verified: "desktop-release.notion-static.com/"
  name "Notion"
  desc "App to write, plan, collaborate, and get organized"
  homepage "https://www.notion.so/"

  livecheck do
    url "https://www.notion.so/desktop/#{livecheck_folder}/download"
    strategy :header_match
    regex(/Notion-(\d+(?:\.\d+)*?[^.]*?)\.dmg/i)
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
