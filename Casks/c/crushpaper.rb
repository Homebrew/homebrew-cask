cask "crushpaper" do
  version "1.6.0"
  sha256 :no_check

  url "https://crushpaper.pages.dev/download/CrushPaper.dmg"
  name "CrushPaper"
  desc "Sticky notes and daily scratchpad that float over fullscreen apps"
  homepage "https://crushpaper.pages.dev/"

  livecheck do
    url "https://crushpaper.pages.dev/version.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "CrushPaper.app"

  uninstall quit: "com.crushpaper.app"

  zap trash: [
    "~/Library/Application Scripts/com.crushpaper.app",
    "~/Library/Application Support/com.crushpaper.app",
    "~/Library/Caches/com.crushpaper.app",
    "~/Library/Containers/com.crushpaper.app",
    "~/Library/HTTPStorages/com.crushpaper.app",
    "~/Library/Preferences/com.crushpaper.app.plist",
  ]
end
