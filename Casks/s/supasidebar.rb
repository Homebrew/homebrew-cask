cask "supasidebar" do
  version "0.19.3"
  sha256 "90cf516096c3ca54e0b5849d54f10e06d2ebce5dbcbbd6ab0535940ecd3e4206"

  url "https://github.com/auspy/supasidebar-updates/releases/download/v#{version}/supasidebar_v#{version}.dmg",
      verified: "github.com/auspy/supasidebar-updates/"
  name "SupaSidebar"
  desc "Arc-like sidebar to save links, files and folders from any browser"
  homepage "https://supasidebar.com/"

  auto_updates true
  depends_on macos: :sonoma

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
