cask "supasidebar" do
  version "1.3.1"
  sha256 "d65b3d394213ec910ad2080bed8dbc1fac296cc4e50a8fe3f8e248882675d5ab"

  url "https://github.com/auspy/supasidebar-updates/releases/download/v#{version}/supasidebar_v#{version}.dmg"
  name "SupaSidebar"
  desc "Arc-like sidebar to save links, files and folders from any browser"
  homepage "https://supasidebar.com/"

  auto_updates true
  depends_on macos: :sonoma

  app "supasidebar.app"

  uninstall quit: "com.supasidebar"

  zap trash: [
    "~/Library/Application Support/com.supasidebar",
    "~/Library/Application Support/supasidebar",
    "~/Library/Caches/com.supasidebar",
    "~/Library/Caches/com.vinayak.supasidebar",
    "~/Library/HTTPStorages/com.supasidebar",
    "~/Library/HTTPStorages/com.supasidebar.binarycookies",
    "~/Library/Preferences/com.supasidebar.plist",
    "~/Library/Saved Application State/com.supasidebar.savedState",
  ]
end
