cask "supasidebar" do
  version "0.17.6"
  sha256 "3a40aa6152f3b6f2dd156d0ef27b0d70b8a2d250d0f1095a20d0a5210f80b5a2"

  url "https://github.com/auspy/supasidebar-updates/releases/download/v#{version}/supasidebar_v#{version}.dmg",
      verified: "github.com/auspy/supasidebar-updates/"
  name "SupaSidebar"
  desc "Arc-like sidebar to save links, files and folders from any browser"
  homepage "https://supasidebar.com/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "supasidebar.app"

  uninstall quit: "com.supasidebar"

  zap trash: [
    "~/Library/Application Support/com.supasidebar",
    "~/Library/Caches/com.supasidebar",
    "~/Library/HTTPStorages/com.supasidebar",
    "~/Library/HTTPStorages/com.supasidebar.binarycookies",
    "~/Library/Preferences/com.supasidebar.plist",
    "~/Library/Saved Application State/com.supasidebar.savedState",
  ]
end
