cask "supasidebar" do
  version "1.3.0"
  sha256 "e0384ced817296973f57a01cd842c84749723e283cb4d0995273ca288ad321fa"

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
