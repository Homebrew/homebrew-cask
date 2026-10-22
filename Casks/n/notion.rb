cask "notion" do
  arch arm: "-arm64"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "latest"

  sha256 arm:   "f32a241e054e6c308c989a8ca0fda403a20f0ea7ca6250bfcb87ae3c8872abca",
         intel: "47fd543d8455afb46df11e6c4d24de09a18b35d9c62de4e87043a40852232c65"

  on_arm do
    version "7.40.1"
  end
  on_intel do
    version "7.40.1"
  end

  url "https://desktop-release.notion-static.com/Notion-#{version}#{arch}.dmg"
  name "Notion"
  desc "App to write, plan, collaborate, and get organised"
  homepage "https://www.notion.com/"

  livecheck do
    url "https://desktop-release.notion-static.com/#{livecheck_folder}-mac.yml?noCache=#{Time.now.to_i}"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Notion.app"

  uninstall quit: "notion.id"

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
