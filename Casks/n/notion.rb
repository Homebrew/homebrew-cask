cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "latest"

  version "3.13.1"
  sha256 arm:   "2e58d5a030f342e6753d2636e270191d8d4da3a4a459b9cf73375ac09a193a00",
         intel: "9c025bf24692a4b0d838805abf18a8adb9d68ccb3be2e2279c3db6046d5129e8"

  url "https://desktop-release.notion-static.com/Notion-#{version}#{arch}.dmg",
      verified: "desktop-release.notion-static.com/"
  name "Notion"
  desc "App to write, plan, collaborate, and get organised"
  homepage "https://www.notion.so/"

  livecheck do
    url "https://desktop-release.notion-static.com/#{livecheck_folder}-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Notion.app"

  zap trash: [
    "~/Library/Application Support/Caches/notion-updater",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/notion.id.sfl*",
    "~/Library/Application Support/Notion",
    "~/Library/Caches/notion.id*",
    "~/Library/Logs/Notion",
    "~/Library/Preferences/ByHost/notion.id.*",
    "~/Library/Preferences/notion.id.*",
    "~/Library/Saved Application State/notion.id.savedState",
    "~/Library/WebKit/notion.id",
  ]
end
